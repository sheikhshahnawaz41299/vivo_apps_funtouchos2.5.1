.class public Lcom/android/systemui/recent/ScreenPinningRequest;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;
    }
.end annotation


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mRequestWindow:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/ScreenPinningRequest;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/ScreenPinningRequest;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/ScreenPinningRequest;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/ScreenPinningRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/ScreenPinningRequest;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/recent/ScreenPinningRequest;->hideScreenPinningNavigationBar()V

    return-void
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 95
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x1000108

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 105
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 106
    const-string v1, "ScreenPinningConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 108
    return-object v0
.end method

.method private hideScreenPinningNavigationBar()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideScreenPinningNavigationBar()V

    .line 305
    :cond_0
    return-void
.end method


# virtual methods
.method public clearPrompt()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    .line 74
    :cond_0
    return-void
.end method

.method public getRequestLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p1, "isLandscape"    # Z

    .prologue
    const/4 v2, -0x2

    .line 127
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 v0, 0x15

    :goto_0
    invoke-direct {v1, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v1

    :cond_0
    const/16 v0, 0x51

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1100e2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    if-ne v0, p1, :cond_1

    .line 115
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->startLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequest;->clearPrompt()V

    .line 124
    return-void

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recent/ScreenPinningRequest;->hideScreenPinningNavigationBar()V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->onConfigurationChanged()V

    .line 92
    :cond_0
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 299
    return-void
.end method

.method public showPrompt(Z)V
    .locals 3
    .param p1, "allowCancel"    # Z

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequest;->clearPrompt()V

    .line 79
    new-instance v1, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    iget-object v2, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;-><init>(Lcom/android/systemui/recent/ScreenPinningRequest;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    .line 81
    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->setSystemUiVisibility(I)V

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/recent/ScreenPinningRequest;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 85
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/recent/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method
