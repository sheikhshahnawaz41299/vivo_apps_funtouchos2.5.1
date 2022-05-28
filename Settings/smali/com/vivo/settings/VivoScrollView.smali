.class public Lcom/vivo/settings/VivoScrollView;
.super Landroid/widget/ScrollView;
.source "VivoScrollView.java"


# static fields
.field private static final MAX_SCROLL_HEIGHT:I = 0x258

.field private static final SCROLL_RATIO:F = 0.5f


# instance fields
.field mContext:Landroid/content/Context;

.field private mRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;

.field private touchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    .line 25
    iput-object p1, p0, Lcom/vivo/settings/VivoScrollView;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    .line 30
    iput-object p1, p0, Lcom/vivo/settings/VivoScrollView;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    .line 35
    iput-object p1, p0, Lcom/vivo/settings/VivoScrollView;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private animation()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 113
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 114
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 115
    iget-object v1, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    iget-object v1, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 117
    iget-object v1, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 119
    return-void
.end method

.method private commonOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 65
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/vivo/settings/VivoScrollView;->touchY:F

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-direct {p0}, Lcom/vivo/settings/VivoScrollView;->isNeedAnimation()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/vivo/settings/VivoScrollView;->animation()V

    goto :goto_0

    .line 75
    :pswitch_2
    iget v4, p0, Lcom/vivo/settings/VivoScrollView;->touchY:F

    .line 76
    .local v4, "preY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 77
    .local v2, "nowY":F
    sub-float v5, v4, v2

    float-to-int v1, v5

    .line 78
    .local v1, "deltaY":I
    iput v2, p0, Lcom/vivo/settings/VivoScrollView;->touchY:F

    .line 79
    invoke-direct {p0}, Lcom/vivo/settings/VivoScrollView;->isNeedMove()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    iget-object v5, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    :cond_1
    iget-object v5, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v3, v5, v1

    .line 84
    .local v3, "offset":I
    const/16 v5, 0x258

    if-ge v3, v5, :cond_0

    const/16 v5, -0x258

    if-le v3, v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    iget-object v6, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v8, v1

    mul-float/2addr v8, v11

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v10, v1

    mul-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isNeedAnimation()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vivo/settings/VivoScrollView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedMove()Z
    .locals 5

    .prologue
    .line 96
    iget-object v4, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 97
    .local v3, "viewHight":I
    invoke-virtual {p0}, Lcom/vivo/settings/VivoScrollView;->getHeight()I

    move-result v2

    .line 98
    .local v2, "srollHight":I
    sub-int v0, v3, v2

    .line 99
    .local v0, "offset":I
    invoke-virtual {p0}, Lcom/vivo/settings/VivoScrollView;->getScrollY()I

    move-result v1

    .line 101
    .local v1, "scrollY":I
    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    .line 102
    :cond_0
    const/4 v4, 0x1

    .line 104
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/vivo/settings/VivoScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    .line 43
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vivo/settings/VivoScrollView;->touchY:F

    .line 50
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vivo/settings/VivoScrollView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lcom/vivo/settings/VivoScrollView;->commonOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
