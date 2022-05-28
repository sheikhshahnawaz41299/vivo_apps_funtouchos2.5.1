.class public Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;
.super Ljava/lang/Object;
.source "StatusBarColorManager.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final GRAY_THRESHOLD:I = 0xb4

.field private static final MSG_REFRESH_KAYGUARD_LAUNCHER_STATUSBAR_STYLE:I = 0x3ea

.field private static final MSG_REFRESH_KAYGUARD_STATUSBAR_STYLE:I = 0x3e9

.field private static final MSG_REFRESH_LAUNCHER_STATUSBAR_STYLE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "StatusBarColorManager"

.field private static sInstance:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;


# instance fields
.field private final SCREENSHOT_HEIGHT:I

.field private final SCREENSHOT_WIDTH:I

.field private mBarTransitions:Lcom/android/systemui/statusbar/phone/BarTransitions;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBgVisible:Z

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mContext:Landroid/content/Context;

.field private mCurrBgColor:I

.field private mCurrentpkg:Ljava/lang/String;

.field private mDefaultStatusBarColor:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIconColor:I

.field private mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private mIsKeyguardBlur:Z

.field private mIsWholeThemeStyle:Z

.field private mKeyguardStatusbarBgFlag:I

.field private mLastBarTransitionsMode:I

.field private mLastStatusBarBgStyle:I

.field private mLastStatusBarBgStyleBeforeKeyguard:I

.field private mLauncherStatusbarBgFlag:I

.field private mLockscreenId:I

.field private mLockscreenIdContentObserver:Landroid/database/ContentObserver;

.field private mNewLockBgColor:I

.field private mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

.field private mPrepareUnLock:Z

.field private mRewriteBgStyle:Z

.field private mSpecialBgSet:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mTickerTextOne:Landroid/widget/TextView;

.field private mTickerTextTwo:Landroid/widget/TextView;

.field private mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

.field private mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

.field private mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->sInstance:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    .line 64
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastBarTransitionsMode:I

    .line 66
    iput v5, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    .line 67
    iput v5, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    .line 68
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyleBeforeKeyguard:I

    .line 69
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mPrepareUnLock:Z

    .line 70
    const v1, -0x121213

    iput v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mDefaultStatusBarColor:I

    .line 71
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIsWholeThemeStyle:Z

    .line 73
    iput v5, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    .line 74
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBgVisible:Z

    .line 75
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLockscreenId:I

    .line 76
    iput-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    .line 77
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrBgColor:I

    .line 78
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mSpecialBgSet:Z

    .line 81
    iput-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 82
    iput-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mHandler:Landroid/os/Handler;

    .line 521
    new-instance v1, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$1;-><init>(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 646
    new-instance v1, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$3;-><init>(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLockscreenIdContentObserver:Landroid/database/ContentObserver;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->readLauncherStatusbarBgFlag()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->readkeyguardStatusbarBgFlag()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    .line 102
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->SCREENSHOT_WIDTH:I

    .line 103
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->SCREENSHOT_HEIGHT:I

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.lockscreen.action.WALLPAPER_SET.DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isWholeThemeStyle(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIsWholeThemeStyle:Z

    .line 112
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_theme_id"

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLockscreenIdContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLockscreenIdContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->refreshKeyguardStatusbarBgFlag(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->handleRefreshWallPaperBg(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLockscreenId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getBarTransitionMode()I
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBarTransitions:Lcom/android/systemui/statusbar/phone/BarTransitions;

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x4

    .line 518
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBarTransitions:Lcom/android/systemui/statusbar/phone/BarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    goto :goto_0
.end method

.method private getGrayValue(I)I
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 148
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v3, v4, 0xff

    .line 149
    .local v3, "r":I
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v1, v4, 0xff

    .line 150
    .local v1, "g":I
    and-int/lit16 v0, p1, 0xff

    .line 151
    .local v0, "b":I
    int-to-double v4, v3

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    int-to-double v6, v0

    const-wide v8, 0x3fe2e147ae147ae1L    # 0.59

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    int-to-double v6, v1

    const-wide v8, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 152
    .local v2, "gray":I
    return v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-object v0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->sInstance:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->sInstance:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    .line 94
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->sInstance:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    return-object v0
.end method

.method private getLauncherStatusbarBgFlag()I
    .locals 5

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, "bgColorFlag":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    const-string v3, "key_status_bar_launcher_color"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 612
    :goto_0
    const-string v2, "StatusBarColorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLauncherStatusbarBgFlag, bgColorFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return v0

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StatusBarColorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLauncherStatusbarBgFlag error! e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLockStatusbarBgFlag()I
    .locals 5

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 619
    .local v0, "bgColorFlag":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    const-string v3, "key_status_bar_lock_color"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 623
    :goto_0
    const-string v2, "StatusBarColorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLockStatusbarBgFlag, bgColorFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return v0

    .line 620
    :catch_0
    move-exception v1

    .line 621
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StatusBarColorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLockStatusbarBgFlag error! e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLockscreenId()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLockscreenId:I

    return v0
.end method

.method private handleRefreshWallPaperBg(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 596
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 597
    .local v1, "lock":I
    if-eqz v0, :cond_0

    .line 598
    const-string v2, "lock"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 600
    :cond_0
    const-string v2, "StatusBarColorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRefreshWallPaperBg, lock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->refreshLauncherStatusbarBgFlag(I)V

    .line 602
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->refreshKeyguardStatusbarBgFlag(I)V

    .line 603
    return-void
.end method

.method private initHandlerThread()V
    .locals 2

    .prologue
    .line 628
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatusBarColorManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 629
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 630
    new-instance v0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$2;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$2;-><init>(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mHandler:Landroid/os/Handler;

    .line 644
    return-void
.end method

.method private initStatusBarColor()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    .line 132
    :goto_1
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyleBeforeKeyguard:I

    .line 133
    return-void

    :cond_0
    move v0, v1

    .line 128
    goto :goto_0

    .line 130
    :cond_1
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private isBackgroundDrawableEnable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 553
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIsWholeThemeStyle:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getBarTransitionMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLauncher(Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentpkg"    # Ljava/lang/String;

    .prologue
    .line 389
    const-string v0, "com.bbk.launcher2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStatusBarColorTransparent(I)Z
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 156
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v0, v1, 0xff

    .line 157
    .local v0, "a":I
    if-nez v0, :cond_0

    .line 158
    const/4 v1, 0x1

    .line 160
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isStatusBarWhiteStyle(I)Z
    .locals 2
    .param p1, "statusBarColor"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getGrayValue(I)I

    move-result v0

    .line 140
    .local v0, "gray":I
    const/16 v1, 0xb4

    if-ge v0, v1, :cond_0

    .line 141
    const/4 v1, 0x0

    .line 143
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private readLauncherStatusbarBgFlag()I
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    const-string v1, "launcher_statusbar_bg_flag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private readkeyguardStatusbarBgFlag()I
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard_statusbar_bg_flag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private refreshKeyguardStatusbarBgFlag(I)V
    .locals 5
    .param p1, "lock"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 427
    if-ne p1, v4, :cond_1

    .line 428
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getLockStatusbarBgFlag()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 429
    iput v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    .line 440
    :goto_0
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->savekeyguardStatusbarBgFlag(I)V

    .line 441
    const-string v0, "StatusBarColorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after refresh, mKeyguardStatusbarBgFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void

    .line 431
    :cond_0
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/common/utils/VivoWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/vivo/common/utils/VivoWallpaperManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->SCREENSHOT_WIDTH:I

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->SCREENSHOT_HEIGHT:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->isLockScreenWhiteStyle(IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    iput v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    goto :goto_0

    .line 437
    :cond_2
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    goto :goto_0
.end method

.method private refreshLauncherStatusbarBgFlag(I)V
    .locals 5
    .param p1, "lock"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 401
    if-ne p1, v4, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getLauncherStatusbarBgFlag()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 403
    iput v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    .line 414
    :goto_0
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->saveLauncherStatusbarBgFlag(I)V

    .line 415
    const-string v0, "StatusBarColorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after refresh, mLauncherStatusbarBgFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void

    .line 405
    :cond_0
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/common/utils/VivoWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/vivo/common/utils/VivoWallpaperManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->SCREENSHOT_WIDTH:I

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->SCREENSHOT_HEIGHT:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->isWallpaperWhiteStyle(IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    iput v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    goto :goto_0

    .line 411
    :cond_2
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    goto :goto_0
.end method

.method private resetBarBackground()V
    .locals 1

    .prologue
    .line 562
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->isModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mSpecialBgSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBarTransitions:Lcom/android/systemui/statusbar/phone/BarTransitions;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBarTransitions:Lcom/android/systemui/statusbar/phone/BarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->resetBarBackground()V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mSpecialBgSet:Z

    goto :goto_0
.end method

.method private saveLauncherStatusbarBgFlag(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    const-string v1, "launcher_statusbar_bg_flag"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 420
    return-void
.end method

.method private savekeyguardStatusbarBgFlag(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard_statusbar_bg_flag"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 446
    return-void
.end method

.method private setDevelopModeBackground()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f020221

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mSpecialBgSet:Z

    .line 378
    return-void
.end method

.method private setStatusBarIconColor(I)V
    .locals 1
    .param p1, "iconColorFlag"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryIcon(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateIconStyle(I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->setFlag(I)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateIconColorQuickly(I)V

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->setFlag(I)V

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->setFlag(I)V

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    if-eqz v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->updateEllipsisIconColor(I)V

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_6

    .line 214
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons(I)V

    .line 216
    :cond_6
    return-void
.end method

.method private setStatusBarTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mTickerTextOne:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mTickerTextOne:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mTickerTextTwo:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mTickerTextTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->setTextColor(I)V

    .line 191
    :cond_3
    return-void
.end method

.method private setWholeThemeBackground()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0205bb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mSpecialBgSet:Z

    .line 383
    return-void
.end method

.method private viewsAssign()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f11025f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f110261

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f11012b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mTickerTextOne:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f11012c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mTickerTextTwo:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getIconPolicy()Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getVivoNetworkController()Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotiIconRedrawHelper()Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f110260

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f110264

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBarTransitions:Lcom/android/systemui/statusbar/phone/BarTransitions;

    .line 176
    return-void
.end method


# virtual methods
.method public getCurrentStatubarsBgStyle()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    return v0
.end method

.method public getLastStatusBarBgStyle()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    return v0
.end method

.method public getLastStatusBarBgStyleBeforeKeyguard()I
    .locals 4

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getCurrentPkgName()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "newCurrentpkg":Ljava/lang/String;
    const-string v1, "StatusBarColorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastStatusBarBgStyleBeforeKeyguard: mCurrentpkg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newCurrentpkg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rewriteBgStyle= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mRewriteBgStyle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNewLockBgColor= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mNewLockBgColor:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 457
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mRewriteBgStyle:Z

    if-eqz v1, :cond_0

    .line 458
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mNewLockBgColor:I

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->isStatusBarWhiteStyle(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyleBeforeKeyguard:I

    .line 460
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    .line 462
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyleBeforeKeyguard:I

    return v1

    .line 458
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getkeyguardStatusbarBgFlag()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    return v0
.end method

.method public isPrepareUnLock()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mPrepareUnLock:Z

    return v0
.end method

.method public notifyStatusBarColorInfo(IIZ)V
    .locals 3
    .param p1, "iconColor"    # I
    .param p2, "bgColor"    # I
    .param p3, "bgVisible"    # Z

    .prologue
    .line 491
    const-string v0, "StatusBarColorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStatusBarColorInfo: iconColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bgColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bgVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iput p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    .line 493
    iput-boolean p3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mBgVisible:Z

    .line 494
    invoke-virtual {p0, p2}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(I)V

    .line 495
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isWholeThemeStyle(Landroid/content/Context;)Z

    move-result v0

    .line 543
    .local v0, "isWholeTheme":Z
    const-string v1, "StatusBarColorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWholeTheme = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIsWholeThemeStyle:Z

    if-eq v0, v1, :cond_0

    .line 545
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIsWholeThemeStyle:Z

    .line 547
    :cond_0
    if-nez v0, :cond_1

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->resetBarBackground()V

    .line 550
    :cond_1
    return-void
.end method

.method public setIsKeyguardBlur(Z)V
    .locals 5
    .param p1, "blur"    # Z

    .prologue
    const/4 v1, 0x0

    .line 573
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIsKeyguardBlur:Z

    .line 574
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v0

    .line 575
    .local v0, "isKeyguardShowing":Z
    const-string v2, "StatusBarColorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIsKeyguardBlur: blur= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isKeyguardShowing= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPrepareUnLock= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mPrepareUnLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mPrepareUnLock:Z

    if-nez v2, :cond_0

    .line 578
    if-eqz p1, :cond_1

    .line 579
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    if-nez v2, :cond_0

    .line 580
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    if-eq v2, v3, :cond_0

    .line 583
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    goto :goto_0
.end method

.method public setKeyguardStatusBarColor()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 589
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mPrepareUnLock:Z

    .line 590
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    if-nez v2, :cond_0

    const v0, 0xffffff

    .line 591
    .local v0, "color":I
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(IZ)V

    .line 592
    return-void

    .end local v0    # "color":I
    :cond_0
    move v0, v1

    .line 590
    goto :goto_0
.end method

.method public setPrepareUnLock(Z)V
    .locals 0
    .param p1, "isPrepare"    # Z

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mPrepareUnLock:Z

    .line 480
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->viewsAssign()V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->initStatusBarColor()V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->initHandlerThread()V

    .line 124
    return-void
.end method

.method public setStatusBarElementsColor(I)V
    .locals 1
    .param p1, "bgColor"    # I

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(IZ)V

    .line 235
    return-void
.end method

.method public setStatusBarElementsColor(IZ)V
    .locals 8
    .param p1, "bgColor"    # I
    .param p2, "rewriteBgStyle"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 238
    iput p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrBgColor:I

    .line 243
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mPrepareUnLock:Z

    if-eqz v6, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getBarTransitionMode()I

    move-result v2

    .line 254
    .local v2, "mode":I
    const/4 v6, 0x4

    if-eq v2, v6, :cond_3

    .line 255
    iget v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastBarTransitionsMode:I

    if-eq v2, v6, :cond_2

    .line 256
    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    .line 258
    :cond_2
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyleBeforeKeyguard:I

    goto :goto_0

    .line 262
    :cond_3
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getLockscreenId()I

    move-result v1

    .line 264
    .local v1, "lockscreenId":I
    iput p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mNewLockBgColor:I

    .line 265
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mRewriteBgStyle:Z

    .line 267
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIsWholeThemeStyle:Z

    if-eqz v6, :cond_4

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->resetBarBackground()V

    .line 271
    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIsKeyguardBlur:Z

    if-eqz v6, :cond_5

    .line 272
    const-string v4, "StatusBarColorManager"

    const-string v6, "Keyguard Blur WallPaper is Showing!"

    invoke-static {v4, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    if-nez v4, :cond_0

    .line 274
    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    goto :goto_0

    .line 279
    :cond_5
    if-gez v1, :cond_6

    .line 280
    const-string v4, "StatusBarColorManager"

    const-string v6, "lockscreenId < 0"

    invoke-static {v4, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    if-nez v4, :cond_0

    .line 282
    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    goto :goto_0

    .line 287
    :cond_6
    iget v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    iget v7, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    if-eq v6, v7, :cond_0

    .line 288
    iget v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mKeyguardStatusbarBgFlag:I

    if-nez v6, :cond_7

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    goto :goto_0

    :cond_7
    move v4, v5

    goto :goto_1

    .line 293
    .end local v1    # "lockscreenId":I
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getCurrentPkgName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    .line 294
    iget-object v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->isLauncher(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 298
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->isStatusBarColorTransparent(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 299
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIsWholeThemeStyle:Z

    if-eqz v6, :cond_9

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->resetBarBackground()V

    .line 302
    :cond_9
    iget v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    iget v7, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    if-eq v6, v7, :cond_a

    .line 303
    iget v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    if-nez v6, :cond_b

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    .line 305
    :cond_a
    iget v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLauncherStatusbarBgFlag:I

    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyleBeforeKeyguard:I

    goto/16 :goto_0

    :cond_b
    move v4, v5

    .line 303
    goto :goto_2

    .line 310
    :cond_c
    iget-object v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->isBackgroundDrawableEnable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 311
    iget-object v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    const v7, 0x1010451

    invoke-static {v6, v7}, Lvivo/util/VivoThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mDefaultStatusBarColor:I

    .line 315
    iget v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mDefaultStatusBarColor:I

    if-ne v6, p1, :cond_10

    .line 316
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->isModeOn()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setDevelopModeBackground()V

    .line 328
    :goto_3
    iget v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    if-eq v6, v4, :cond_d

    iget v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    if-nez v6, :cond_13

    .line 329
    :cond_d
    iget v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    iget v7, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    if-eq v6, v7, :cond_e

    .line 330
    iget v6, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    if-nez v6, :cond_12

    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    .line 332
    :cond_e
    iget-object v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 333
    iget v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyleBeforeKeyguard:I

    goto/16 :goto_0

    .line 319
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setWholeThemeBackground()V

    goto :goto_3

    .line 322
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->resetBarBackground()V

    goto :goto_3

    .line 325
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->resetBarBackground()V

    goto :goto_3

    :cond_12
    move v4, v5

    .line 330
    goto :goto_4

    .line 338
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->isStatusBarWhiteStyle(I)Z

    move-result v0

    .line 342
    .local v0, "isWhiteStyle":Z
    if-eqz v0, :cond_15

    move v3, v5

    .line 343
    .local v3, "newStatusBarBgStyle":I
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 344
    iput v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyleBeforeKeyguard:I

    .line 346
    :cond_14
    iget v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    if-eq v3, v4, :cond_0

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    goto/16 :goto_0

    .end local v3    # "newStatusBarBgStyle":I
    :cond_15
    move v3, v4

    .line 342
    goto :goto_5
.end method

.method public setStatusBarElementsColor(Z)V
    .locals 5
    .param p1, "isBgWhiteStyle"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    const-string v0, "StatusBarColorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarElementsColor(), isBgWhiteStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-eqz p1, :cond_0

    .line 221
    const v0, -0xb8b8b9

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarTextColor(I)V

    .line 222
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarIconColor(I)V

    .line 223
    iput v3, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getBarTransitionMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastBarTransitionsMode:I

    .line 231
    :goto_0
    return-void

    .line 226
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarTextColor(I)V

    .line 227
    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarIconColor(I)V

    .line 228
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getBarTransitionMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastBarTransitionsMode:I

    goto :goto_0
.end method

.method public setStatusBarIconColor(Z)V
    .locals 4
    .param p1, "whiteStyle"    # Z

    .prologue
    const/4 v0, 0x1

    .line 498
    const-string v1, "StatusBarColorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatusBarIconColor: whiteStyle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    const-string v0, "StatusBarColorManager"

    const-string v1, "setStatusBarIconColor: at Keyguard, return!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    if-nez v1, :cond_0

    .line 504
    :cond_2
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mIconColor:I

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    if-eq v1, v2, :cond_0

    .line 505
    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public showDevelopMode(Z)V
    .locals 3
    .param p1, "isModeOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 355
    if-eqz p1, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setDevelopModeBackground()V

    .line 372
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->isBackgroundDrawableEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mContext:Landroid/content/Context;

    const v1, 0x1010451

    invoke-static {v0, v1}, Lvivo/util/VivoThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mDefaultStatusBarColor:I

    .line 362
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mDefaultStatusBarColor:I

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrBgColor:I

    if-ne v0, v1, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setWholeThemeBackground()V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->resetBarBackground()V

    goto :goto_0

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->resetBarBackground()V

    goto :goto_0
.end method

.method public updateStatusBarBgStyle()V
    .locals 2

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrentpkg:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->isLauncher(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrBgColor:I

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->isStatusBarWhiteStyle(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 468
    .local v0, "currBgStyle":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mLastStatusBarBgStyle:I

    if-eq v1, v0, :cond_0

    .line 469
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->mCurrBgColor:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(I)V

    .line 472
    .end local v0    # "currBgStyle":I
    :cond_0
    return-void

    .line 467
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
