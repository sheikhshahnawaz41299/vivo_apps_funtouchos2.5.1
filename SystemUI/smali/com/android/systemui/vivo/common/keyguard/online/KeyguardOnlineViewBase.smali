.class public Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.source "KeyguardOnlineViewBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardOnlineViewBase"

.field protected static mErrorFlag:Z


# instance fields
.field private mBouncerChangedAnim:Landroid/animation/ObjectAnimator;

.field protected mContext:Landroid/content/Context;

.field protected mCoverView:Landroid/view/View;

.field protected mIsBouncer:Z

.field protected mIsOnResume:Z

.field protected mThemeFile:Ljava/io/File;

.field protected mThemePath:Ljava/lang/String;

.field protected mUnlockHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mErrorFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mUnlockHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_theme_id_2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mThemePath:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mThemePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mThemePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mThemeFile:Ljava/io/File;

    .line 46
    const-string v0, "KeyguardOnlineViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mThemePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mThemePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->setFocusableInTouchMode(Z)V

    .line 49
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->setDescendantFocusability(I)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->recycle()V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mThemeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable_theme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mThemeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeOnlineCollectData(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    sput-boolean v3, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mErrorFlag:Z

    .line 57
    const-string v0, "KeyguardOnlineViewBase"

    const-string v1, "themePath null "

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private bouncerChangedAnim(Z)V
    .locals 5
    .param p1, "bouncer"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mBouncerChangedAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mBouncerChangedAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mBouncerChangedAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mBouncerChangedAnim:Landroid/animation/ObjectAnimator;

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mCoverView:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mBouncerChangedAnim:Landroid/animation/ObjectAnimator;

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mBouncerChangedAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mBouncerChangedAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 149
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mCoverView:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mBouncerChangedAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method


# virtual methods
.method protected createCoverView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 62
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mCoverView:Landroid/view/View;

    .line 63
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mCoverView:Landroid/view/View;

    const/high16 v3, -0x4c000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mCoverView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mCoverView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, "statusBarBg":Landroid/view/View;
    const v2, 0x7f020307

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-void
.end method

.method public dismissWithAnim()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mIsBouncer:Z

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->bouncerChangedAnim(Z)V

    .line 133
    return-void
.end method

.method public onCleanup()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mCoverView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mCoverView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->removeView(Landroid/view/View;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mCoverView:Landroid/view/View;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mThemeFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable_theme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mThemeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeOnlineCollectData(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    :cond_1
    return-void
.end method

.method public onHide(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mCoverView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 104
    :cond_0
    return-void
.end method

.method public onNotificationChanged(ZZ)V
    .locals 2
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    .line 123
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->getNotificationView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->getNotificationView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mIsOnResume:Z

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mIsOnResume:Z

    .line 96
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    const-string v1, "screen_off"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeOnlineCollectData(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mIsOnResume:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->getNotificationView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->getNotificationView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    const-string v1, "screen_on"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeOnlineCollectData(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    const-string v0, "KeyguardOnlineViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    const-string v1, "start_activity"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeOnlineCollectData(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method protected unlock()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "KeyguardOnlineViewBase"

    const-string v1, "online unlock"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->userActivity()V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->mContext:Landroid/content/Context;

    const-string v1, "unlock_screen"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeOnlineCollectData(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    return-void
.end method
