.class public Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SwitcherScrollView.java"


# instance fields
.field private mAdjust:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;-><init>(Landroid/widget/HorizontalScrollView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherScrollView;->mAdjust:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    .line 17
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->computeScroll()V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherScrollView;->mAdjust:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->computeScroll()V

    .line 31
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 36
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherScrollView;->mAdjust:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    invoke-virtual {v1, p1}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 37
    return v0
.end method
