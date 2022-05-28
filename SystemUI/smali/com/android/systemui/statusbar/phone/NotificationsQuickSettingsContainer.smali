.class public Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
.super Landroid/widget/FrameLayout;
.source "NotificationsQuickSettingsContainer.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field private mInflated:Z

.field private mKeyguardStatusBar:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mStackScroller:Landroid/view/View;

.field private mUserSwitcher:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    .line 60
    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    const v1, 0x7f1100fc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mScrollView:Landroid/view/View;

    .line 50
    const v1, 0x7f1100fe

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    .line 51
    const v1, 0x7f11008d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    .line 52
    const v1, 0x7f1100ff

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 53
    .local v0, "userSwitcher":Landroid/view/ViewStub;
    invoke-virtual {v0, p0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 54
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    .line 55
    return-void
.end method

.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 104
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    .line 107
    :cond_0
    return-void
.end method
