.class public abstract Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.source "HalffoldControl.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/halfold/AnimationControlBase;


# static fields
.field private static final ACTION_LOCK_SCREEN_ON:Ljava/lang/String; = "com.bbk.lock.screen.on"

.field private static final ACTION_LOCK_SCREEN_SHOW:Ljava/lang/String; = "com.bbk.lock.screen.show"

.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "HalffoldControl"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private final CALL_ACTIVITY:I

.field private final LEFT_CORNER:I

.field private final LEFT_PANEL:I

.field private final MSG_ACTIVITY:I

.field private final MSG_TAKE_SCREEN_ANI:I

.field private final MSG_TAKE_SCREEN_SHOT:I

.field private final MSG_TAKE_SCREEN_UNLOCK:I

.field private final RIGHT_CORNER:I

.field private final RIGHT_PANEL:I

.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field private activityEnter:I

.field private alphaPaint:Landroid/graphics/Paint;

.field private callBg:Landroid/widget/ImageView;

.field private callNum:I

.field private callView:Landroid/widget/TextView;

.field private chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

.field private clickAnimator:Landroid/animation/ObjectAnimator;

.field private cornerLength:I

.field private delay:J

.field private direction:I

.field private edge:I

.field public fromHorizontal:Z

.field private imagePaper:Landroid/widget/RelativeLayout;

.field private inAnimation:Z

.field public index:I

.field private isDownUse:Z

.field private isFirstEnter:Z

.field isShoting:Z

.field private lastState:Ljava/lang/String;

.field private leftView:Landroid/widget/RelativeLayout;

.field private mBeforeLockShot:Landroid/graphics/Bitmap;

.field private mBlurWallpaper:Landroid/graphics/Bitmap;

.field private mBootListener:Landroid/content/BroadcastReceiver;

.field private mChargeLevel:I

.field private mCharged:Z

.field private mContext:Landroid/content/Context;

.field private mCurScreen:I

.field private mHandler:Landroid/os/Handler;

.field private mIsBouncer:Z

.field private mIsCharging:Z

.field private mLastMotionX:F

.field private mNotifcationState:Z

.field private mPluggedIn:Z

.field private mRectDes:Landroid/graphics/Rect;

.field private mRectSrc:Landroid/graphics/Rect;

.field private mRegister:Z

.field private mScroller:Landroid/widget/Scroller;

.field private final mShadeRes:[I

.field private mTouchDown:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTransition:Lcom/vivo/vivotransition/VivoTransition;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mmsBg:Landroid/widget/ImageView;

.field private mmsView:Landroid/widget/TextView;

.field private msgNum:I

.field private pointX:F

.field private pointX_down:F

.field private pointX_move:F

.field private pointX_up:F

.field private pointY:F

.field private rightView:Landroid/widget/RelativeLayout;

.field screenShot:Ljava/lang/Runnable;

.field private scrollx:I

.field private shadeBitmap:[Landroid/graphics/Bitmap;

.field private simCardView:Landroid/view/View;

.field private whichScreen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->LEFT_PANEL:I

    .line 64
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->RIGHT_PANEL:I

    .line 65
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->LEFT_CORNER:I

    .line 66
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->RIGHT_CORNER:I

    .line 67
    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->CALL_ACTIVITY:I

    .line 68
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->MSG_ACTIVITY:I

    .line 69
    const/16 v1, 0x21c

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_WIDTH:I

    .line 70
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_HEIGHT:I

    .line 71
    const/16 v1, 0xdc

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->cornerLength:I

    .line 73
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isFirstEnter:Z

    .line 74
    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->activityEnter:I

    .line 75
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX:F

    .line 76
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointY:F

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->alphaPaint:Landroid/graphics/Paint;

    .line 79
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mShadeRes:[I

    .line 84
    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->delay:J

    .line 85
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isShoting:Z

    .line 87
    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchState:I

    .line 88
    iput v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mLastMotionX:F

    .line 95
    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->whichScreen:I

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->lastState:Ljava/lang/String;

    .line 97
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->fromHorizontal:Z

    .line 221
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRegister:Z

    .line 256
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBootListener:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->screenShot:Ljava/lang/Runnable;

    .line 465
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->inAnimation:Z

    .line 579
    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->MSG_TAKE_SCREEN_UNLOCK:I

    .line 580
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->MSG_TAKE_SCREEN_SHOT:I

    .line 581
    const/16 v1, 0xde

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->MSG_TAKE_SCREEN_ANI:I

    .line 582
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    .line 607
    iput v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_down:F

    .line 608
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    .line 609
    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callNum:I

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->msgNum:I

    .line 804
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mIsCharging:Z

    .line 829
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mPluggedIn:Z

    .line 830
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mCharged:Z

    .line 831
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mChargeLevel:I

    .line 832
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchDown:Z

    .line 112
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchSlop:I

    .line 114
    new-instance v1, Lcom/vivo/vivotransition/VivoTransition;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/vivo/vivotransition/VivoTransition;-><init>(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTransition:Lcom/vivo/vivotransition/VivoTransition;

    .line 115
    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mCurScreen:I

    .line 116
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mScroller:Landroid/widget/Scroller;

    .line 117
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 118
    new-array v1, v6, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mShadeRes:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRectSrc:Landroid/graphics/Rect;

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRectDes:Landroid/graphics/Rect;

    .line 125
    return-void

    .line 79
    nop

    :array_0
    .array-data 4
        0x7f02025f
        0x7f020261
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isInKeyguardState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_WIDTH:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_HEIGHT:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScreenShot(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->leftView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->rightView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->direction:I

    return v0
.end method

.method static synthetic access$1608(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->direction:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->direction:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->edge:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->edge:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->scrollx:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->scrollx:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isFirstEnter:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->setChildrenLayerType(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isFirstEnter:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->takeScreenShot()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->inAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->delay:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->delay:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->lastState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->lastState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->recycleLockShotBitmap()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBeforeLockShot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBeforeLockShot:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBlurWallpaper:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private ajustScreenSize()V
    .locals 3

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 822
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 824
    .local v0, "density":F
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_WIDTH:I

    .line 825
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_HEIGHT:I

    .line 826
    return-void
.end method

.method private clickAnimator(Z)V
    .locals 4
    .param p1, "left"    # Z

    .prologue
    const/4 v0, 0x0

    .line 477
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->direction:I

    .line 478
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->scrollx:I

    .line 479
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_WIDTH:I

    mul-int/lit8 v0, v0, 0x11

    div-int/lit8 v0, v0, 0x18

    :goto_0
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->edge:I

    .line 480
    const-string v0, "index"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator:Landroid/animation/ObjectAnimator;

    .line 481
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 577
    return-void

    .line 479
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_WIDTH:I

    mul-int/lit8 v0, v0, 0x1f

    div-int/lit8 v0, v0, 0x18

    goto :goto_0

    .line 480
    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method private drawVisibleChild(Landroid/graphics/Canvas;IIJ)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftScreen"    # I
    .param p3, "rightSccreen"    # I
    .param p4, "drawingTime"    # J

    .prologue
    .line 330
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4, p5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method private getScreenShot(IIII)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 422
    .local v3, "findResult":Z
    :try_start_0
    const-string v6, "android.view.SurfaceControl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 423
    .local v5, "screenClass":Ljava/lang/Class;
    const-string v6, "screenshot"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/graphics/Rect;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 425
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    const/4 v3, 0x1

    .line 432
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "screenClass":Ljava/lang/Class;
    :goto_0
    if-nez v3, :cond_0

    .line 434
    :try_start_1
    const-string v6, "android.view.SurfaceControl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 435
    .restart local v5    # "screenClass":Ljava/lang/Class;
    const-string v6, "screenshot"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 437
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    const/4 v3, 0x1

    .line 444
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "screenClass":Ljava/lang/Class;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 446
    :try_start_2
    const-string v6, "android.view.Surface"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 447
    .restart local v5    # "screenClass":Ljava/lang/Class;
    const-string v6, "screenshot"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 449
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 450
    const/4 v3, 0x1

    .line 455
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "screenClass":Ljava/lang/Class;
    :cond_1
    :goto_2
    if-nez v1, :cond_2

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02025e

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 458
    :cond_2
    return-object v1

    .line 428
    :catch_0
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 439
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 440
    .restart local v2    # "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_1

    .line 451
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    .line 452
    .restart local v2    # "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private getVisibleScreen([I)V
    .locals 9
    .param p1, "range"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildCount()I

    move-result v0

    .line 304
    .local v0, "childCount":I
    if-lez v0, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getMeasuredWidth()I

    move-result v4

    .line 306
    .local v4, "screenWidth":I
    const/4 v2, 0x0

    .line 307
    .local v2, "leftScreen":I
    const/4 v3, 0x0

    .line 308
    .local v3, "rightScreen":I
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, "currPage":Landroid/view/View;
    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 311
    add-int/lit8 v2, v2, 0x1

    .line 312
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 314
    :cond_0
    move v3, v2

    .line 315
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 317
    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 318
    add-int/lit8 v3, v3, 0x1

    .line 319
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 321
    :cond_1
    aput v2, p1, v7

    .line 322
    aput v3, p1, v8

    .line 327
    .end local v1    # "currPage":Landroid/view/View;
    .end local v2    # "leftScreen":I
    .end local v3    # "rightScreen":I
    .end local v4    # "screenWidth":I
    :goto_2
    return-void

    .line 324
    :cond_2
    aput v5, p1, v7

    .line 325
    aput v5, p1, v8

    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "HalffoldControl"

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private recycleInfo()V
    .locals 3

    .prologue
    .line 887
    monitor-enter p0

    .line 888
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->fromHorizontal:Z

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "half fold is unlock     activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->activityEnter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 890
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->activityEnter:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 891
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 892
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 899
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    .line 900
    return-void

    .line 893
    :cond_0
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->activityEnter:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 894
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 895
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 899
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 897
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private recycleLockShotBitmap()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBeforeLockShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBeforeLockShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBeforeLockShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 915
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBeforeLockShot:Landroid/graphics/Bitmap;

    .line 917
    :cond_0
    return-void
.end method

.method private recycleShadeBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 920
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 921
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 922
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 924
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 921
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 927
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    .line 929
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .prologue
    .line 224
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRegister:Z

    if-nez v1, :cond_0

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRegister:Z

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, "fl":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "com.bbk.lock.screen.on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "com.bbk.lock.screen.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "com.android.bbk.action.ACTION_USB_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBootListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    .end local v0    # "fl":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private resetAttributeSet()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->inAnimation:Z

    .line 776
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    .line 777
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->activityEnter:I

    .line 778
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX:F

    .line 779
    return-void
.end method

.method private setAnimationDirection()V
    .locals 3

    .prologue
    .line 756
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX:F

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_down:F

    .line 757
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointY:F

    .line 758
    .local v0, "pointY_down":F
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 760
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xde

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->stopChargingAnimation()V

    .line 762
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->resetAttributeSet()V

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimationDirection  callview   left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimationDirection  mmsView   l:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mmsBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mmsBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimationDirection     pointX_down:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_down:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      pointY_down:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      callNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      msgNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->msgNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 767
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callNum:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_down:F

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 768
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->activityEnter:I

    .line 772
    :cond_1
    :goto_0
    return-void

    .line 769
    :cond_2
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->msgNum:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_down:F

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mmsBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mmsBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 770
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->activityEnter:I

    goto :goto_0
.end method

.method private setChildrenLayerType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method private setIndex(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 473
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->index:I

    .line 474
    return-void
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 164
    const-string v2, "snapToDestination"

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getWidth()I

    move-result v1

    .line 166
    .local v1, "screenWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    div-int v0, v2, v1

    .line 167
    .local v0, "destScreen":I
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    .line 168
    return-void
.end method

.method private snapToScreen(I)V
    .locals 6
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 171
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->whichScreen:I

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snap to screen      whichScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 176
    .local v3, "delta":I
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x438

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_WIDTH:I

    div-int v5, v4, v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 177
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mCurScreen:I

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->invalidate()V

    .line 180
    .end local v3    # "delta":I
    :cond_0
    return-void
.end method

.method private takeScreenShot()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->screenShot:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 463
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 2

    .prologue
    .line 904
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRegister:Z

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBootListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 908
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->unRegisterReceiver()V

    .line 878
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->recycleLockShotBitmap()V

    .line 879
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->recycleShadeBitmap()V

    .line 880
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 884
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->scrollTo(II)V

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->postInvalidate()V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->whichScreen:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->onUnlockDeviceAndRecycle()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildCount()I

    move-result v13

    .line 337
    .local v13, "childCount":I
    const/16 v17, 0x0

    .line 338
    .local v17, "shadeBg":Landroid/graphics/Bitmap;
    if-lez v13, :cond_6

    .line 339
    const/4 v5, 0x0

    .line 341
    .local v5, "isScrolling":Z
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 342
    .local v18, "visibleScreen":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getVisibleScreen([I)V

    .line 343
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchState:I

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    .line 344
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v4

    .line 347
    .local v4, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_WIDTH:I

    move/from16 v19, v0

    .line 348
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollY()I

    move-result v16

    .line 349
    .local v16, "scrollY":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_HEIGHT:I

    .line 350
    .local v15, "height":I
    add-int v2, v4, v19

    add-int v3, v16, v15

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getDrawingTime()J

    move-result-wide v10

    .line 353
    .local v10, "drawingTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTransition:Lcom/vivo/vivotransition/VivoTransition;

    const/4 v3, 0x0

    aget v6, v18, v3

    const/4 v3, 0x1

    aget v7, v18, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/vivo/vivotransition/VivoTransition;->animateDispatchDraw(Landroid/graphics/Canvas;IZII)Z

    move-result v14

    .line 355
    .local v14, "drawWithEffect":Z
    if-nez v14, :cond_0

    .line 356
    const/4 v2, 0x0

    aget v8, v18, v2

    const/4 v2, 0x1

    aget v9, v18, v2

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->drawVisibleChild(Landroid/graphics/Canvas;IIJ)V

    .line 358
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 359
    const/4 v12, 0x0

    .line 360
    .local v12, "alpha":I
    mul-int/lit8 v2, v19, 0x3

    div-int/lit8 v2, v2, 0x2

    if-le v4, v2, :cond_3

    .line 361
    mul-int/lit8 v2, v19, 0x2

    sub-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x1fe

    div-int v12, v2, v19

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    aget-object v17, v2, v3

    .line 373
    :goto_1
    if-eqz v12, :cond_1

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRectDes:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRectDes:Landroid/graphics/Rect;

    move/from16 v0, v16

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRectDes:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_WIDTH:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRectDes:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_HEIGHT:I

    add-int v3, v3, v16

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mRectDes:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->alphaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 386
    .end local v4    # "scrollX":I
    .end local v5    # "isScrolling":Z
    .end local v10    # "drawingTime":J
    .end local v12    # "alpha":I
    .end local v14    # "drawWithEffect":Z
    .end local v15    # "height":I
    .end local v16    # "scrollY":I
    .end local v18    # "visibleScreen":[I
    .end local v19    # "width":I
    :cond_1
    :goto_2
    return-void

    .line 343
    .restart local v5    # "isScrolling":Z
    .restart local v18    # "visibleScreen":[I
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 363
    .restart local v4    # "scrollX":I
    .restart local v10    # "drawingTime":J
    .restart local v12    # "alpha":I
    .restart local v14    # "drawWithEffect":Z
    .restart local v15    # "height":I
    .restart local v16    # "scrollY":I
    .restart local v19    # "width":I
    :cond_3
    move/from16 v0, v19

    if-le v4, v0, :cond_4

    .line 364
    sub-int v2, v4, v19

    mul-int/lit16 v2, v2, 0x1fe

    div-int v12, v2, v19

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    aget-object v17, v2, v3

    goto :goto_1

    .line 366
    :cond_4
    div-int/lit8 v2, v19, 0x2

    if-le v4, v2, :cond_5

    .line 367
    sub-int v2, v19, v4

    mul-int/lit16 v2, v2, 0x1fe

    div-int v12, v2, v19

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v17, v2, v3

    goto :goto_1

    .line 370
    :cond_5
    mul-int/lit16 v2, v4, 0x1fe

    div-int v12, v2, v19

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->shadeBitmap:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v17, v2, v3

    goto :goto_1

    .line 384
    .end local v4    # "scrollX":I
    .end local v5    # "isScrolling":Z
    .end local v10    # "drawingTime":J
    .end local v12    # "alpha":I
    .end local v14    # "drawWithEffect":Z
    .end local v15    # "height":I
    .end local v16    # "scrollY":I
    .end local v18    # "visibleScreen":[I
    .end local v19    # "width":I
    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public onBouncerChanged(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 971
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mIsBouncer:Z

    .line 972
    if-eqz p1, :cond_1

    .line 973
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->whichScreen:I

    if-ne v0, v1, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 975
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 977
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 983
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->resetAttributeSet()V

    .line 984
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onFinishInflate()V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->setWillNotDraw(Z)V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->ajustScreenSize()V

    .line 203
    const v0, 0x7f110155

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    .line 205
    const v0, 0x7f11014f

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->leftView:Landroid/widget/RelativeLayout;

    .line 206
    const v0, 0x7f110157

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->rightView:Landroid/widget/RelativeLayout;

    .line 207
    const v0, 0x7f110152

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callView:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f110154

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mmsView:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f110151

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callBg:Landroid/widget/ImageView;

    .line 211
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callBg:Landroid/widget/ImageView;

    const v1, 0x7f020260

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    const v0, 0x7f110153

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mmsBg:Landroid/widget/ImageView;

    .line 214
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mmsBg:Landroid/widget/ImageView;

    const v1, 0x7f020262

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    const v0, 0x7f110150

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->imagePaper:Landroid/widget/RelativeLayout;

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->registerBroadcast()V

    .line 219
    return-void
.end method

.method public onGetCallEvent(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 786
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->callNum:I

    .line 787
    return-void
.end method

.method public onGetMsgEvent(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 790
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->msgNum:I

    .line 791
    return-void
.end method

.method public onHide(Z)V
    .locals 1
    .param p1, "bouncer"    # Z

    .prologue
    .line 933
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mIsBouncer:Z

    .line 934
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 935
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->setChildrenLayerType(I)V

    .line 936
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->setVisibility(I)V

    .line 937
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->recycleLockShotBitmap()V

    .line 939
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 782
    const/4 v0, 0x1

    return v0
.end method

.method protected onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 943
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyguardVisibilityChanged(Z)V

    .line 944
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isInKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 945
    :cond_1
    const-string v0, "keyguard is dismissed or reshow"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isShoting:Z

    .line 947
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->recycleLockShotBitmap()V

    .line 949
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildCount()I

    move-result v0

    .line 134
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 135
    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 137
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 138
    .local v3, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 139
    add-int/2addr v1, v3

    .line 134
    .end local v3    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "childView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onMeasure(II)V

    .line 146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 147
    .local v2, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 148
    .local v3, "widthMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_0

    .line 149
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ScrollLayout only canmCurScreen run at EXACTLY mode!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildCount()I

    move-result v0

    .line 153
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_1
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mCurScreen:I

    mul-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->scrollTo(II)V

    .line 157
    return-void
.end method

.method public onNotificationChanged(ZZ)V
    .locals 2
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    .line 963
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 965
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 967
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x2

    const/16 v11, 0x8

    const/16 v12, 0xde

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 614
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->inAnimation:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isShoting:Z

    if-eqz v9, :cond_2

    .line 615
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ontouch   inAnimation:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->inAnimation:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   ,isShoting:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isShoting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 752
    :cond_1
    :goto_0
    return v8

    .line 619
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBeforeLockShot:Landroid/graphics/Bitmap;

    if-nez v9, :cond_3

    .line 620
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 621
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 624
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_4

    .line 625
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 627
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 629
    .local v6, "x":F
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX:F

    .line 630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointY:F

    .line 631
    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_5

    .line 632
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX:F

    .line 633
    :cond_5
    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX:F

    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_WIDTH:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 634
    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iput v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX:F

    .line 636
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 644
    :pswitch_1
    const-string v9, "ACTION_DOWN or ACTION_POINTER_DOWN"

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 645
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchDown:Z

    .line 646
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->setAnimationDirection()V

    .line 647
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_7

    .line 648
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 650
    :cond_7
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mLastMotionX:F

    .line 651
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_8

    :goto_1
    iput v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchState:I

    .line 652
    invoke-direct {p0, v13}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->setChildrenLayerType(I)V

    goto :goto_0

    .line 639
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchDown:Z

    .line 640
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    .line 641
    invoke-direct {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    goto :goto_0

    :cond_8
    move v7, v8

    .line 651
    goto :goto_1

    .line 657
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->userActivity()V

    .line 659
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    if-nez v9, :cond_1

    .line 661
    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_down:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_9

    .line 662
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->setAnimationDirection()V

    .line 664
    :cond_9
    iput v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchState:I

    .line 666
    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_move:F

    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_down:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 667
    .local v2, "moveDistance":F
    const/high16 v9, 0x41200000    # 10.0f

    cmpg-float v9, v2, v9

    if-ltz v9, :cond_1

    .line 670
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v9

    if-ltz v9, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x4

    if-gt v9, v10, :cond_d

    .line 671
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    .line 672
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->simCardView:Landroid/view/View;

    if-eqz v9, :cond_a

    .line 673
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->simCardView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :cond_a
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->inAnimation:Z

    .line 675
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    .line 684
    :cond_b
    :goto_2
    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mLastMotionX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_f

    .line 685
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mLastMotionX:F

    .line 751
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->invalidate()V

    goto/16 :goto_0

    .line 676
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x4

    if-lt v9, v10, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    if-gt v9, v10, :cond_b

    .line 677
    invoke-direct {p0, v13}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    .line 678
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->simCardView:Landroid/view/View;

    if-eqz v9, :cond_e

    .line 679
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->simCardView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :cond_e
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->inAnimation:Z

    .line 681
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    goto :goto_2

    .line 687
    :cond_f
    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mLastMotionX:F

    sub-float/2addr v9, v6

    float-to-int v0, v9

    .line 688
    .local v0, "deltaX":I
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mLastMotionX:F

    .line 689
    invoke-virtual {p0, v0, v7}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->scrollBy(II)V

    goto :goto_3

    .line 694
    .end local v0    # "deltaX":I
    .end local v2    # "moveDistance":F
    :pswitch_4
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    if-nez v9, :cond_1

    .line 696
    iput-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchDown:Z

    .line 697
    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX:F

    iput v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_up:F

    .line 698
    iput v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchState:I

    .line 699
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 700
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    invoke-virtual {v3, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 701
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    float-to-int v4, v9

    .line 702
    .local v4, "velocityX":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_UP    velocityX:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 703
    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_up:F

    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_down:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 704
    .restart local v2    # "moveDistance":F
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getWidth()I

    move-result v5

    .line 706
    .local v5, "width":I
    const/high16 v9, 0x41200000    # 10.0f

    cmpg-float v9, v2, v9

    if-gez v9, :cond_11

    .line 707
    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->pointX_up:F

    div-int/lit8 v10, v5, 0x2

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_10

    move v1, v8

    .line 708
    .local v1, "left":Z
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator(Z)V

    .line 709
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .end local v1    # "left":Z
    :cond_10
    move v1, v7

    .line 707
    goto :goto_4

    .line 712
    :cond_11
    div-int/lit8 v9, v5, 0x5

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-lez v9, :cond_14

    const/16 v9, 0x258

    if-gt v4, v9, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v9

    if-ltz v9, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v9

    div-int/lit8 v10, v5, 0x2

    if-gt v9, v10, :cond_14

    .line 714
    :cond_12
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    .line 715
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->simCardView:Landroid/view/View;

    if-eqz v7, :cond_13

    .line 716
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->simCardView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 717
    :cond_13
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->inAnimation:Z

    .line 718
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    .line 733
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_c

    .line 734
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 735
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_3

    .line 719
    :cond_14
    div-int/lit8 v7, v5, 0x5

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-lez v7, :cond_17

    const/16 v7, -0x258

    if-lt v4, v7, :cond_15

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v7

    mul-int/lit8 v9, v5, 0x3

    div-int/lit8 v9, v9, 0x2

    if-lt v7, v9, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v7

    mul-int/lit8 v9, v5, 0x2

    if-gt v7, v9, :cond_17

    .line 721
    :cond_15
    invoke-direct {p0, v13}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    .line 722
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->simCardView:Landroid/view/View;

    if-eqz v7, :cond_16

    .line 723
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->simCardView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 724
    :cond_16
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->inAnimation:Z

    .line 725
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    goto :goto_5

    .line 727
    :cond_17
    invoke-direct {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    .line 728
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->inAnimation:Z

    .line 729
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    .line 730
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 731
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    int-to-long v10, v9

    invoke-virtual {v7, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 740
    .end local v2    # "moveDistance":F
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "velocityX":I
    .end local v5    # "width":I
    :pswitch_5
    const-string v9, "ACTION_POINTER_UP"

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->logd(Ljava/lang/String;)V

    .line 741
    iput-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchDown:Z

    .line 742
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isDownUse:Z

    .line 743
    invoke-direct {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    .line 744
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public onUnlockDeviceAndRecycle()V
    .locals 0

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->recycleInfo()V

    .line 874
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 0

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->setBackDrawable()V

    .line 954
    return-void
.end method

.method public setBackDrawable()V
    .locals 5

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    .line 249
    .local v0, "kwm":Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 250
    .local v1, "wallpaper":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->imagePaper:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 254
    :cond_0
    return-void
.end method

.method public setChageState(ZZI)V
    .locals 2
    .param p1, "pluggedIn"    # Z
    .param p2, "charged"    # Z
    .param p3, "level"    # I

    .prologue
    .line 835
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mPluggedIn:Z

    .line 836
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mCharged:Z

    .line 837
    iput p3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mChargeLevel:I

    .line 839
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mChargeLevel:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setLevel(I)V

    .line 842
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    .prologue
    .line 958
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V

    .line 959
    return-void
.end method

.method public setSimCardView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->simCardView:Landroid/view/View;

    .line 129
    return-void
.end method

.method public startAllAnimation()V
    .locals 0

    .prologue
    .line 794
    return-void
.end method

.method public startChargingAnimation()V
    .locals 2

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mPluggedIn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mTouchDown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 850
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mCharged:Z

    if-eqz v0, :cond_2

    .line 851
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 856
    :cond_1
    :goto_0
    return-void

    .line 853
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->startChargeAnimation()V

    goto :goto_0
.end method

.method public startMusicAnimation(Ljava/lang/String;)V
    .locals 0
    .param p1, "musicName"    # Ljava/lang/String;

    .prologue
    .line 807
    return-void
.end method

.method public startNormalAnimation()V
    .locals 1

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 798
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->setVisibility(I)V

    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mNotifcationState:Z

    .line 800
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mLastMotionX:F

    .line 802
    :cond_0
    return-void
.end method

.method public stopAllAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 810
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->stopChargingAnimation()V

    .line 811
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 813
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->resetAttributeSet()V

    .line 814
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mIsBouncer:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->snapToScreen(I)V

    .line 815
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 818
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 814
    goto :goto_0
.end method

.method public stopChargingAnimation()V
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 861
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->chargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 863
    :cond_0
    return-void
.end method

.method public stopMusicAnimation()V
    .locals 0

    .prologue
    .line 866
    return-void
.end method

.method public stopNormalAnimation()V
    .locals 0

    .prologue
    .line 869
    return-void
.end method
