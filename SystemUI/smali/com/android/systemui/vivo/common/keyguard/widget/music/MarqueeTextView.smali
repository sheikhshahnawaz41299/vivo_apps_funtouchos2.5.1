.class public Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;
.super Landroid/view/View;
.source "MarqueeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mDensity:F

.field private mEnableMarquee:Z

.field private mMarquee:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

.field private mMarqueer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mTextSize:F

.field private mToMarquee:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mTextSize:F

    .line 25
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mEnableMarquee:Z

    .line 26
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mMarqueer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mDensity:F

    .line 47
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mMarquee:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mTextSize:F

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->dip2px(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mMarquee:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mToMarquee:Z

    return p1
.end method

.method private dip2px(F)F
    .locals 1
    .param p1, "dipValue"    # F

    .prologue
    .line 111
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mDensity:F

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public getTextWidth()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getViewWidth()I
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getPaddingLeft()I

    move-result v3

    int-to-float v0, v3

    .line 58
    .local v0, "startX":F
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getViewWidth()I

    move-result v2

    .line 59
    .local v2, "viewWidth":I
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 60
    .local v1, "textWidth":I
    if-gt v1, v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mMarquee:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mMarquee:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->getScroll()F

    move-result v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 68
    .end local v0    # "startX":F
    .end local v1    # "textWidth":I
    .end local v2    # "viewWidth":I
    :cond_2
    return-void
.end method

.method public setEnableMarquee(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mEnableMarquee:Z

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mEnableMarquee:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->startMarquee()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mText:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->stopMarquee()V

    .line 100
    return-void
.end method

.method public startMarquee()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mToMarquee:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mEnableMarquee:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mMarqueer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mToMarquee:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->invalidate()V

    .line 85
    :cond_0
    return-void
.end method

.method public stopMarquee()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mMarquee:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->TAG:Ljava/lang/String;

    const-string v1, "stopMarquee"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mMarqueer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->mMarquee:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->stop()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->invalidate()V

    goto :goto_0
.end method
