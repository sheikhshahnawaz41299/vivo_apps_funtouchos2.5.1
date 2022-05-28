.class public Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;
.super Ljava/lang/Object;
.source "ScrollViewAdjust.java"


# instance fields
.field private mNeedAdjustPosition:Z

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mScroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .locals 3
    .param p1, "scrollView"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mNeedAdjustPosition:Z

    .line 20
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 22
    :try_start_0
    const-class v1, Landroid/widget/HorizontalScrollView;

    const-string v2, "mScroller"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 23
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/OverScroller;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mScroller:Landroid/widget/OverScroller;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private adjust()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 43
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_1

    .line 64
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    rem-int v1, v3, v4

    .line 47
    .local v1, "length":I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-le v1, v3, :cond_2

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    .line 51
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    aput v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v1

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 52
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    new-instance v3, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust$1;-><init>(Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->onScrollFinished()V

    .line 33
    :cond_0
    return-void
.end method

.method public onScrollFinished()V
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mNeedAdjustPosition:Z

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mNeedAdjustPosition:Z

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->adjust()V

    .line 40
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 68
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 79
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mNeedAdjustPosition:Z

    .line 82
    :goto_0
    return-void

    .line 71
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mNeedAdjustPosition:Z

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->adjust()V

    goto :goto_0

    .line 75
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->mNeedAdjustPosition:Z

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
