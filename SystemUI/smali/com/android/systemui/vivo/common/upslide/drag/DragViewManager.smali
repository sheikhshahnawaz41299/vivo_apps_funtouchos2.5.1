.class public Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;
.super Ljava/lang/Object;
.source "DragViewManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DragViewManager"

.field private static mIsWholeThemeStyle:Z


# instance fields
.field private mBlankTouchListener:Landroid/view/View$OnTouchListener;

.field private mContext:Landroid/content/Context;

.field private mCurrRotation:I

.field private mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

.field private mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

.field private mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mTipArrowLength:I

.field private tipArrowBounds_0:[I

.field private tipArrowBounds_270:[I

.field private tipArrowBounds_90:[I


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .locals 2
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mCurrRotation:I

    .line 27
    const/16 v0, 0x4e

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mTipArrowLength:I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->tipArrowBounds_0:[I

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->tipArrowBounds_90:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->tipArrowBounds_270:[I

    .line 33
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager$1;-><init>(Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mRootView:Landroid/widget/RelativeLayout;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->init()V

    .line 48
    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 30
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 31
    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private getDragView()Lcom/android/systemui/vivo/common/ui/DragAnimationView;
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mCurrRotation:I

    packed-switch v0, :pswitch_data_0

    .line 237
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    goto :goto_0

    .line 235
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "DragViewManager"

    const-string v1, "DragManager init error! mRootView is null!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x7f110284

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x7f110285

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x7f110286

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    sget v0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->ARROW_BLACK_STYLE:I

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->setDragViewColor(I)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mTipArrowLength:I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isWholeThemeStyle(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    .line 63
    return-void
.end method

.method private refreshThemeStyle()V
    .locals 4

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isWholeThemeStyle(Landroid/content/Context;)Z

    move-result v0

    .line 290
    .local v0, "isWholeTheme":Z
    const-string v1, "DragViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshThemeStyle, mIsWholeThemeStyle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

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

    .line 291
    sget-boolean v1, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eq v0, v1, :cond_0

    .line 292
    sput-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    .line 294
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->updateDragView(I)V

    .line 295
    return-void
.end method

.method private setDragViewColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setColor(I)V

    .line 226
    return-void
.end method

.method private updateLayoutParams(IILandroid/widget/ImageView;)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 281
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 282
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 283
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    return-void
.end method


# virtual methods
.method public getTipArrowLength()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mTipArrowLength:I

    return v0
.end method

.method public isWholeThemeStyle()Z
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->refreshThemeStyle()V

    .line 216
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 5
    .param p1, "newRotation"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 66
    const-string v0, "DragViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRotationChanged, newRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mCurrRotation:I

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 85
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 80
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public showDragView(Z)V
    .locals 8
    .param p1, "show"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mTipArrowLength:I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->updateLayoutParams(IILandroid/widget/ImageView;)V

    .line 173
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mTipArrowLength:I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-direct {p0, v2, v5, v3}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->updateLayoutParams(IILandroid/widget/ImageView;)V

    .line 174
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mTipArrowLength:I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-direct {p0, v2, v5, v3}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->updateLayoutParams(IILandroid/widget/ImageView;)V

    .line 181
    :goto_0
    sget-boolean v2, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eqz v2, :cond_4

    .line 182
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mCurrRotation:I

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_1
    :pswitch_0
    return-void

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDragerLength()I

    move-result v0

    .line 177
    .local v0, "dragerLength":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->updateLayoutParams(IILandroid/widget/ImageView;)V

    .line 178
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->updateLayoutParams(IILandroid/widget/ImageView;)V

    .line 179
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->updateLayoutParams(IILandroid/widget/ImageView;)V

    goto :goto_0

    .line 184
    .end local v0    # "dragerLength":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    if-eqz p1, :cond_1

    const v1, 0x7f020619

    :goto_2
    invoke-virtual {v2, v4, v1, v6}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_1

    :cond_1
    const v1, 0x7f0205ca

    goto :goto_2

    .line 188
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    if-eqz p1, :cond_2

    const v1, 0x7f020618

    :goto_3
    invoke-virtual {v2, v4, v1, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0205c9

    goto :goto_3

    .line 192
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    if-eqz p1, :cond_3

    const v1, 0x7f020617

    :goto_4
    invoke-virtual {v2, v4, v1, v7}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_1

    :cond_3
    const v1, 0x7f0205c8

    goto :goto_4

    .line 197
    :cond_4
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mCurrRotation:I

    packed-switch v2, :pswitch_data_1

    :pswitch_4
    goto :goto_1

    .line 199
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    if-eqz p1, :cond_5

    const v1, 0x7f020619

    :cond_5
    invoke-virtual {v2, p1, v1, v6}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_1

    .line 203
    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    if-eqz p1, :cond_6

    const v1, 0x7f020618

    :cond_6
    invoke-virtual {v2, p1, v1, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_1

    .line 207
    :pswitch_7
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    if-eqz p1, :cond_7

    const v1, 0x7f020617

    :cond_7
    invoke-virtual {v2, p1, v1, v7}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_1

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 197
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public touchTipArrow(FF)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 245
    const/4 v7, 0x4

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 246
    .local v3, "tipArrowBounds":[I
    iget v7, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mCurrRotation:I

    packed-switch v7, :pswitch_data_0

    .line 258
    :goto_0
    :pswitch_0
    const/4 v7, -0x1

    aget v8, v3, v5

    if-ne v7, v8, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->getDragView()Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    move-result-object v0

    .line 260
    .local v0, "arrow":Lcom/android/systemui/vivo/common/ui/DragAnimationView;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->getWidth()I

    move-result v4

    .line 261
    .local v4, "w":I
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->getHeight()I

    move-result v1

    .line 262
    .local v1, "h":I
    new-array v2, v9, [I

    .line 263
    .local v2, "location":[I
    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->getLocationOnScreen([I)V

    .line 265
    aget v7, v2, v6

    aput v7, v3, v6

    .line 267
    aget v7, v2, v5

    aput v7, v3, v5

    .line 269
    aget v7, v2, v6

    add-int/2addr v7, v4

    aput v7, v3, v9

    .line 271
    aget v7, v2, v5

    add-int/2addr v7, v1

    aput v7, v3, v10

    .line 273
    .end local v0    # "arrow":Lcom/android/systemui/vivo/common/ui/DragAnimationView;
    .end local v1    # "h":I
    .end local v2    # "location":[I
    .end local v4    # "w":I
    :cond_0
    aget v7, v3, v6

    int-to-float v7, v7

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_1

    aget v7, v3, v9

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_1

    aget v7, v3, v5

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_1

    aget v7, v3, v10

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gtz v7, :cond_1

    .line 277
    :goto_1
    return v5

    .line 248
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->tipArrowBounds_0:[I

    .line 249
    goto :goto_0

    .line 251
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->tipArrowBounds_90:[I

    .line 252
    goto :goto_0

    .line 254
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->tipArrowBounds_270:[I

    goto :goto_0

    :cond_1
    move v5, v6

    .line 277
    goto :goto_1

    .line 245
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public updateDragView(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const v5, 0x7f0205c9

    const v1, 0x7f0205c8

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mCurrRotation:I

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 93
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const v1, 0x7f0205ca

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->changeToLine(I)V

    goto :goto_0

    .line 100
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v2, v5, v2}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->changeToLine(I)V

    goto :goto_0

    .line 107
    :pswitch_5
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->changeToLine(I)V

    goto :goto_0

    .line 116
    :pswitch_6
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mCurrRotation:I

    packed-switch v0, :pswitch_data_2

    :pswitch_7
    goto :goto_0

    .line 118
    :pswitch_8
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const v1, 0x7f0205ca

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->keepingLineState(I)V

    goto :goto_0

    .line 125
    :pswitch_9
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v2, v5, v2}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_0

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->keepingLineState(I)V

    goto :goto_0

    .line 132
    :pswitch_a
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto :goto_0

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->keepingLineState(I)V

    goto :goto_0

    .line 141
    :pswitch_b
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mCurrRotation:I

    packed-switch v0, :pswitch_data_3

    :pswitch_c
    goto :goto_0

    .line 143
    :pswitch_d
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const v1, 0x7f0205c7

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto/16 :goto_0

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->changeToArrow(I)V

    goto/16 :goto_0

    .line 150
    :pswitch_e
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eqz v0, :cond_7

    .line 151
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const v1, 0x7f0205c6

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto/16 :goto_0

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_90:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->changeToArrow(I)V

    goto/16 :goto_0

    .line 157
    :pswitch_f
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mIsWholeThemeStyle:Z

    if-eqz v0, :cond_8

    .line 158
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const v1, 0x7f0205c5

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    goto/16 :goto_0

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->mDragView_270:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->changeToArrow(I)V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 91
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 116
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
    .end packed-switch

    .line 141
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method
