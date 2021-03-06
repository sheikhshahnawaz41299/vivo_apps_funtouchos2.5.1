.class public Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_OPEN:I = 0x2

.field public static final STATE_OPENING:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPanelExpandedFractionSum:F

.field mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

.field mPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/PanelView;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 65
    return-void
.end method

.method public static final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "fmt"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 42
    return-void
.end method

.method private isPanelDisabledByKeyguardSpecialViews()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->statusBarDisabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 75
    return-void
.end method

.method public collapseAllPanels(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 249
    const/4 v2, 0x0

    .line 250
    .local v2, "waiting":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 251
    .local v1, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(Z)V

    .line 253
    const/4 v2, 0x1

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->resetViews()V

    .line 256
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 257
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 258
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    goto :goto_0

    .line 262
    .end local v1    # "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v3, :cond_2

    .line 265
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 268
    :cond_2
    return-void
.end method

.method public getBarHeight()F
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public go(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 61
    return-void
.end method

.method public isPanelDisabledBySecureKeyguard()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->isKeyguardSecureForSystemUI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAllPanelsCollapsed()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public onClosingFinished()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onExpandingFinished()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 70
    return-void
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p1, "openPanel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 280
    return-void
.end method

.method public onPanelPeeked()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 111
    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v5, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->showScreenPinToast(Landroid/content/Context;)V

    move v2, v3

    .line 167
    :goto_0
    return v2

    .line 121
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_8

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v1

    .line 123
    .local v1, "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    if-nez v1, :cond_2

    .line 125
    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v5, "onTouch: no panel for touch at (%d,%d)"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v0

    .line 131
    .local v0, "enabled":Z
    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PanelBar.onTouch, enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isPanelDisabledBySecureKeyguard()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isPanelDisabledByKeyguardSpecialViews()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 136
    :cond_3
    const/4 v0, 0x0

    .line 142
    :cond_4
    if-nez v0, :cond_5

    .line 144
    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v5, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 148
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v4, "PanelBar.onTouch, enabled = false"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 164
    .end local v0    # "enabled":Z
    .end local v1    # "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 167
    .local v2, "result":Z
    :cond_7
    goto/16 :goto_0

    .line 154
    .end local v2    # "result":Z
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isPanelDisabledBySecureKeyguard()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->isPanelDisabledByKeyguardSpecialViews()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez v3, :cond_6

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getBarHeight()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    .line 158
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v4, "PanelBar, MotionEvent.ACTION_UP, onHoodClick()"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->onHoodClick()V

    goto :goto_1
.end method

.method public onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 288
    return-void
.end method

.method public onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "expand"    # Z

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 292
    return-void
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V
    .locals 11
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "frac"    # F
    .param p3, "expanded"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 205
    const/4 v0, 0x1

    .line 206
    .local v0, "fullyClosed":Z
    const/4 v1, 0x0

    .line 208
    .local v1, "fullyOpenedPanel":Lcom/android/systemui/statusbar/phone/PanelView;
    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 209
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 212
    .local v3, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getFloorBottomPosition()F

    move-result v6

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_1

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithShade()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move v5, v9

    .line 216
    .local v5, "visible":Z
    :goto_1
    if-eqz v5, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 218
    if-eqz p3, :cond_0

    .line 219
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v6, :cond_2

    .line 220
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 223
    :cond_2
    const/4 v0, 0x0

    .line 224
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    .line 225
    .local v4, "thisFrac":F
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    if-eqz v5, :cond_5

    move v6, v4

    :goto_3
    add-float/2addr v6, v10

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 227
    if-ne p1, v3, :cond_0

    .line 228
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v6

    if-nez v6, :cond_0

    move-object v1, p1

    goto :goto_0

    .end local v4    # "thisFrac":F
    .end local v5    # "visible":Z
    :cond_3
    move v5, v7

    .line 212
    goto :goto_1

    .line 216
    .restart local v5    # "visible":Z
    :cond_4
    const/16 v6, 0x8

    goto :goto_2

    .restart local v4    # "thisFrac":F
    :cond_5
    move v6, v8

    .line 225
    goto :goto_3

    .line 232
    .end local v3    # "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    .end local v4    # "thisFrac":F
    .end local v5    # "visible":Z
    :cond_6
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 233
    if-eqz v1, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v6, :cond_8

    .line 234
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 246
    :cond_7
    :goto_4
    return-void

    .line 238
    :cond_8
    if-eqz v0, :cond_7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v6, :cond_7

    .line 240
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    goto :goto_4
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 4
    .param p1, "touch"    # Landroid/view/MotionEvent;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 99
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    return-object v1
.end method

.method public setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V
    .locals 6
    .param p1, "ph"    # Lcom/android/systemui/statusbar/phone/PanelHolder;

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 79
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v4, "setPanelHolder: null PanelHolder"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildCount()I

    move-result v0

    .line 85
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 86
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 87
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_2

    .line 88
    check-cast v2, Lcom/android/systemui/statusbar/phone/PanelView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 85
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 4
    .param p1, "panel"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setSelectedPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 192
    .local v1, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-eq v1, p1, :cond_0

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(Z)V

    goto :goto_0

    .line 196
    .end local v1    # "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    return-void
.end method
