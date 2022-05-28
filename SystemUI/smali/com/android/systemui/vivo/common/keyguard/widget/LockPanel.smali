.class public Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;
.super Landroid/widget/RelativeLayout;
.source "LockPanel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelOpenedEvent;,
        Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelClosedEvent;,
        Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DOWNWARDS:I = 0x3f4

.field private static final HANDLE_HEIGHT:I = 0x26

.field private static final MOVE_HIGHT:I = 0xf

.field private static final POSTDELAYTIME:I = 0x5

.field private static final UPWARDS:I = 0x3f3


# instance fields
.field private FirstY:F

.field private IsMoving:Z

.field private LastY:F

.field private StartAni:F

.field private TAG:Ljava/lang/String;

.field private app_shortcut:Landroid/widget/RelativeLayout;

.field private btnHandler:Landroid/widget/Button;

.field private handlerTouchEvent:Landroid/view/View$OnTouchListener;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBottomMargin:I

.field private mContext:Landroid/content/Context;

.field private mGesDetec_panelfill:Landroid/view/GestureDetector;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field public mIsScrolling:Z

.field private mPanelListener:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;

.field private mPanel_fill:Landroid/widget/RelativeLayout;

.field private mScrollY:F

.field private mView:Landroid/view/View;

.field private mlp:Landroid/widget/RelativeLayout$LayoutParams;

.field private panelClosedEvent:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelClosedEvent;

.field private panelContainer:Landroid/widget/RelativeLayout;

.field private panelOpenedEvent:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelOpenedEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/os/Handler;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "otherView"    # Landroid/view/View;
    .param p3, "rl"    # Landroid/widget/RelativeLayout;
    .param p4, "panelfill"    # Landroid/widget/RelativeLayout;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v4, "LockPanel"

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->TAG:Ljava/lang/String;

    .line 57
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mBottomMargin:I

    .line 61
    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mIsScrolling:Z

    .line 63
    iput-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->panelClosedEvent:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelClosedEvent;

    .line 64
    iput-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->panelOpenedEvent:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelOpenedEvent;

    .line 72
    const/high16 v4, 0x41a00000    # 20.0f

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->StartAni:F

    .line 73
    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->FirstY:F

    .line 74
    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->LastY:F

    .line 130
    new-instance v4, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)V

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->handlerTouchEvent:Landroid/view/View$OnTouchListener;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mView:Landroid/view/View;

    .line 88
    iput-object p3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->app_shortcut:Landroid/widget/RelativeLayout;

    .line 89
    iput-object p5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mHandler:Landroid/os/Handler;

    .line 90
    const/16 v0, 0xb4

    .line 92
    .local v0, "height":I
    if-eqz p4, :cond_0

    .line 93
    iput-object p4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mPanel_fill:Landroid/widget/RelativeLayout;

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    .line 98
    new-instance v4, Landroid/view/GestureDetector;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 99
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 102
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    neg-int v4, v0

    add-int/lit8 v4, v4, 0x26

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 106
    const/16 v4, 0x90

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mBottomMargin:I

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->btnHandler:Landroid/widget/Button;

    .line 113
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x26

    invoke-direct {v2, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v2, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->btnHandler:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->btnHandler:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 116
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->btnHandler:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->handlerTouchEvent:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->btnHandler:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->addView(Landroid/view/View;)V

    .line 120
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->panelContainer:Landroid/widget/RelativeLayout;

    .line 121
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v3, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x2b

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 124
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->panelContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->app_shortcut:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->panelContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->addView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mPanelListener:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mBottomMargin:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->FirstY:F

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->IsMoving:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method public fillPanelContainer(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->panelContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 212
    const-string v0, "LockPanel"

    const-string v1, "fillPanelContainer addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mIsScrolling:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mScrollY:F

    .line 221
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mIsScrolling:Z

    .line 223
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->TAG:Ljava/lang/String;

    const-string v1, "Gesture onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 288
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mIsScrolling:Z

    .line 245
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mScrollY:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mScrollY:F

    .line 247
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->app_shortcut:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mBottomMargin:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mScrollY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mScrollY:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mBottomMargin:I

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 253
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mScrollY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mBottomMargin:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 254
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    const-string v0, "onScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mBottomMargin:I

    if-ne v0, v1, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :cond_1
    :goto_1
    return v3

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mScrollY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mScrollY:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mScrollY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 263
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-nez v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mlp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->app_shortcut:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 295
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->TAG:Ljava/lang/String;

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public setOnSlideListener(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mPanelListener:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;

    .line 184
    return-void
.end method

.method public setPanelClosedEvent(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelClosedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelClosedEvent;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->panelClosedEvent:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelClosedEvent;

    .line 193
    return-void
.end method

.method public setPanelOpenedEvent(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelOpenedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelOpenedEvent;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->panelOpenedEvent:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$PanelOpenedEvent;

    .line 202
    return-void
.end method
