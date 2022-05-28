.class public Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;
.super Landroid/widget/LinearLayout;
.source "VivoNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$1;,
        Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$OnVerticalChangedListener;,
        Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MSG_CHECK_INVALID_LAYOUT:I = 0x21ee

.field static final SLIPPERY_WHEN_DISABLED:Z = true

.field static final TAG:Ljava/lang/String; = "VivoNavigationBarView"

.field static final WORKAROUND_INVALID_LAYOUT:Z = true


# instance fields
.field mBarSize:I

.field mCurrentView:Landroid/view/View;

.field private mDelegateIntercepted:Z

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;

.field private mIsLayoutRtl:Z

.field mNavigationIconHints:I

.field private mOnVerticalChangedListener:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$OnVerticalChangedListener;

.field mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field mShowMenu:Z

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mCurrentView:Landroid/view/View;

    .line 60
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 67
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mDisabledFlags:I

    .line 68
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mNavigationIconHints:I

    .line 118
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mHandler:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;

    .line 104
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mDisplay:Landroid/view/Display;

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mBarSize:I

    .line 109
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mVertical:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mShowMenu:Z

    .line 111
    return-void
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 279
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 284
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 280
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 284
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 1
    .param p1, "newVertical"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$OnVerticalChangedListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$OnVerticalChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    .line 219
    :cond_0
    return-void
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "how"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mHandler:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 290
    return-void
.end method

.method private setVisibleOrGone(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_0
    return-void

    .line 143
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private swapChildrenOrderIfVertical(Landroid/view/View;)V
    .locals 6
    .param p1, "group"    # Landroid/view/View;

    .prologue
    .line 259
    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 260
    check-cast v3, Landroid/widget/LinearLayout;

    .line 261
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 262
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 263
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 265
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 268
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 269
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 273
    .end local v0    # "childCount":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    .end local v3    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method private updateRTLOrder()V
    .locals 8

    .prologue
    const v7, 0x7f1100ae

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 234
    .local v0, "isLayoutRtl":Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mIsLayoutRtl:Z

    if-eq v6, v0, :cond_1

    .line 237
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v3, v6, v4

    .line 238
    .local v3, "rotation90":Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->swapChildrenOrderIfVertical(Landroid/view/View;)V

    .line 240
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v6, 0x3

    aget-object v2, v4, v6

    .line 241
    .local v2, "rotation270":Landroid/view/View;
    if-eq v3, v2, :cond_0

    .line 242
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->swapChildrenOrderIfVertical(Landroid/view/View;)V

    .line 244
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mIsLayoutRtl:Z

    .line 247
    .end local v2    # "rotation270":Landroid/view/View;
    .end local v3    # "rotation90":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v1, v4, v5

    .line 248
    .local v1, "rotation0":Landroid/view/View;
    const v4, 0x7f1100af

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const v5, 0x7f0200bf

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setImageResource(I)V

    .line 250
    return-void

    .end local v0    # "isLayoutRtl":Z
    .end local v1    # "rotation0":Landroid/view/View;
    :cond_2
    move v0, v5

    .line 232
    goto :goto_0
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "vis"    # I

    .prologue
    .line 293
    sparse-switch p0, :sswitch_data_0

    .line 299
    const-string v0, "VISIBLE"

    :goto_0
    return-object v0

    .line 295
    :sswitch_0
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 297
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 293
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getBackButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f1100af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f1100b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f1100b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isVertical()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mVertical:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->updateRTLOrder()V

    .line 225
    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v2, 0x2

    const v3, 0x7f1100ad

    invoke-virtual {p0, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v3, v0, v4

    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    const v1, 0x7f1100b6

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    .line 171
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v5

    aput-object v2, v0, v1

    .line 173
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mCurrentView:Landroid/view/View;

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->updateRTLOrder()V

    .line 176
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 196
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 198
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 205
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 206
    .local v0, "newVertical":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 207
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mVertical:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->reorient()V

    .line 209
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 211
    :cond_0
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 213
    return-void

    .line 205
    .end local v0    # "newVertical":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reorient()V
    .locals 4

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 187
    .local v1, "rot":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mCurrentView:Landroid/view/View;

    .line 191
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 139
    return-void
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$OnVerticalChangedListener;)V
    .locals 1
    .param p1, "onVerticalChangedListener"    # Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$OnVerticalChangedListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$OnVerticalChangedListener;

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mVertical:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 116
    return-void
.end method

.method public setSlippery(Z)V
    .locals 5
    .param p1, "newSlippery"    # Z

    .prologue
    const/high16 v4, 0x20000000

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 149
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 150
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 151
    .local v1, "oldSlippery":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 152
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 158
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 159
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .end local v1    # "oldSlippery":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 150
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    .restart local v1    # "oldSlippery":Z
    :cond_2
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 154
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method
