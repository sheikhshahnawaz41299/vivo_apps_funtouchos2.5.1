.class public Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;
.super Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;
.source "KeyguardVL.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardVL"


# instance fields
.field private mCallNum:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mIsSoundOn:Z

.field private mLockScreenView:Landroid/view/View;

.field private mMsgNum:I

.field private mOnTouchEvent:Lcom/vlife/IRegisterOnTouchEvent;

.field private mUnlockEvent:Lcom/vlife/IRegisterUnlockEvent;

.field private mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mLockScreenView:Landroid/view/View;

    .line 72
    new-instance v5, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)V

    iput-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mOnTouchEvent:Lcom/vlife/IRegisterOnTouchEvent;

    .line 80
    new-instance v5, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)V

    iput-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mUnlockEvent:Lcom/vlife/IRegisterUnlockEvent;

    .line 221
    new-instance v5, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContentObserver:Landroid/database/ContentObserver;

    .line 38
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/vlife/VlifeLockScreen;->isVlifeWallpaperInstalled(Landroid/content/Context;)Z

    move-result v1

    .line 39
    .local v1, "isInstalled":Z
    if-eqz v1, :cond_1

    .line 41
    :try_start_0
    new-instance v5, Lcom/vlife/VlifeLockScreen;

    invoke-direct {v5}, Lcom/vlife/VlifeLockScreen;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    .line 42
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/vlife/VlifeLockScreen;->init(Landroid/content/Context;)V

    .line 43
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/vlife/VlifeLockScreen;->getVlifeLockScreenView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mLockScreenView:Landroid/view/View;

    .line 44
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mThemePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vlife/VlifeLockScreen;->changeLockScreenId(Ljava/lang/String;)V

    .line 45
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mLockScreenView:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mUnlockEvent:Lcom/vlife/IRegisterUnlockEvent;

    invoke-virtual {v5, v6}, Lcom/vlife/VlifeLockScreen;->setUnlockEvent(Lcom/vlife/IRegisterUnlockEvent;)V

    .line 48
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mOnTouchEvent:Lcom/vlife/IRegisterOnTouchEvent;

    invoke-virtual {v5, v6}, Lcom/vlife/VlifeLockScreen;->setOnTouchEvent(Lcom/vlife/IRegisterOnTouchEvent;)V

    .line 49
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContext:Landroid/content/Context;

    const-string v6, "lockscreen_sounds_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mIsSoundOn:Z

    .line 51
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mIsSoundOn:Z

    invoke-virtual {v3, v5}, Lcom/vlife/VlifeLockScreen;->setUnlockSoundOn(Z)V

    .line 52
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/vlife/VlifeLockScreen;->setUnlockVibrateOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->createCoverView()V

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->registerContentObserver()V

    .line 65
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sput-boolean v4, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mErrorFlag:Z

    .line 55
    const-string v3, "KeyguardVL"

    const-string v4, "VlifeLockScreen error : "

    invoke-static {v3, v4, v0}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sput-boolean v4, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mErrorFlag:Z

    .line 62
    const-string v3, "KeyguardVL"

    const-string v4, "VlifeWallpaper is not installed "

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mCallNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->startActivity(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mMsgNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mUnlockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mIsSoundOn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mIsSoundOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)Lcom/vlife/VlifeLockScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    return-object v0
.end method

.method public static getKeyguardVLView(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mErrorFlag:Z

    .line 210
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "keyguardVL":Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;
    sget-boolean v1, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mErrorFlag:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 212
    const-string v1, "KeyguardVL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------getKeyguardVLView Successed view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v0    # "keyguardVL":Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;
    :goto_0
    return-object v0

    .line 216
    .restart local v0    # "keyguardVL":Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;
    :cond_0
    const-string v1, "KeyguardVL"

    const-string v2, "------getKeyguardVLView Failed------"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_sounds_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    return-void
.end method

.method private startActivity(I)V
    .locals 3
    .param p1, "intentId"    # I

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 241
    return-void
.end method


# virtual methods
.method public onBouncerChanged(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    .line 197
    const-string v0, "KeyguardVL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bouncer  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    if-eqz v0, :cond_0

    .line 199
    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    invoke-virtual {v0}, Lcom/vlife/VlifeLockScreen;->hide()V

    .line 205
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onBouncerChanged(Z)V

    .line 206
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    invoke-virtual {v0}, Lcom/vlife/VlifeLockScreen;->show()V

    goto :goto_0
.end method

.method public onCleanup()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "KeyguardVL"

    const-string v1, "------onCleanup------"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onCleanup()V

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->unregisterContentObserver()V

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mLockScreenView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mLockScreenView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->removeView(Landroid/view/View;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mLockScreenView:Landroid/view/View;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    invoke-virtual {v0}, Lcom/vlife/VlifeLockScreen;->onDestroy()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    .line 175
    :cond_1
    monitor-exit p0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onHide(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    .line 152
    const-string v0, "KeyguardVL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------onHide------ bouncer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onHide(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    invoke-virtual {v0}, Lcom/vlife/VlifeLockScreen;->hide()V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vlife/VlifeLockScreen;->setSurfaceViewVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->userActivity()V

    .line 114
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onKeyguardVisibilityChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onKeyguardVisibilityChanged(Z)V

    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlife/VlifeLockScreen;->setSurfaceViewVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    invoke-virtual {v0}, Lcom/vlife/VlifeLockScreen;->show()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    invoke-virtual {v0}, Lcom/vlife/VlifeLockScreen;->hide()V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vlife/VlifeLockScreen;->setSurfaceViewVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "KeyguardVL"

    const-string v1, "------onPause------"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onPause()V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    invoke-virtual {v0}, Lcom/vlife/VlifeLockScreen;->handleScreenOff()V

    .line 148
    :cond_0
    return-void
.end method

.method public onRefreshInfo(II)V
    .locals 3
    .param p1, "msgNum"    # I
    .param p2, "callNum"    # I

    .prologue
    .line 244
    const-string v0, "KeyguardVL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh info, msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mMsgNum:I

    .line 246
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mCallNum:I

    .line 247
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "KeyguardVL"

    const-string v1, "------onResume------"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    invoke-virtual {v0}, Lcom/vlife/VlifeLockScreen;->handleScreenOn()V

    .line 139
    :cond_0
    return-void
.end method

.method public onTransparent()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "KeyguardVL"

    const-string v1, "onTransparent"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->mVlifeLockScreen:Lcom/vlife/VlifeLockScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vlife/VlifeLockScreen;->setSurfaceViewVisibility(I)V

    .line 130
    :cond_0
    return-void
.end method

.method protected unlock()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->unlock()V

    .line 70
    return-void
.end method
