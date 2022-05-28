.class public Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;
.super Ljava/lang/Object;
.source "VivoNaivgationBarHelper.java"


# static fields
.field private static final LOCK_TO_APP_GESTURE_TOLERENCE:I = 0xc8

.field private static final MSG_SHOW_POPUP_TIP:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "VivoNaivgationBarHelper"

.field private static mLockTaskModeEnabled:Z


# instance fields
.field private mBlankTouchListener:Landroid/view/View$OnTouchListener;

.field private mContext:Landroid/content/Context;

.field private mCurrRotation:I

.field private mHandler:Landroid/os/Handler;

.field private mLastLockToAppLongPress:J

.field mLockModeObserver:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

.field private mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

.field private mLongPressNavigationBarButtonListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressNavigationBarHomeButtonListener:Landroid/view/View$OnLongClickListener;

.field private mNavigationBarButtonClickListener:Landroid/view/View$OnClickListener;

.field private mNavigationBarLength:I

.field private mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

.field private mRecentContainer:Landroid/widget/LinearLayout;

.field private mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskModeEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mCurrRotation:I

    .line 104
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$2;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarButtonClickListener:Landroid/view/View$OnClickListener;

    .line 113
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$3;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLongPressNavigationBarHomeButtonListener:Landroid/view/View$OnLongClickListener;

    .line 123
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$4;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLongPressNavigationBarButtonListener:Landroid/view/View$OnLongClickListener;

    .line 190
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$5;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mHandler:Landroid/os/Handler;

    .line 238
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$6;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockModeObserver:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    .line 260
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$7;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    invoke-virtual {v0, p2}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->setUpSlideHelper(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    .line 54
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockModeObserver:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->registerLockTaskModeObserver(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskModeEnabled:Z

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->initButtonListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mCurrRotation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->handleLongPressBackRecents(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskModeEnabled:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 30
    sput-boolean p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskModeEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleLongPressBackRecents(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    const/4 v5, 0x0

    .line 139
    .local v5, "sendBackLongPress":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 140
    .local v2, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 144
    .local v6, "time":J
    iget-wide v8, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLastLockToAppLongPress:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xc8

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->isPressed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 146
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->setLockTaskMode(Z)V

    .line 147
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->setUnLockTaskPending(Z)V

    .line 148
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->hideLockTaskToast()V

    .line 149
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 150
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v8, :cond_0

    .line 151
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->performCollapse()V

    .line 159
    :cond_0
    :goto_0
    iput-wide v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLastLockToAppLongPress:J

    .line 161
    .end local v6    # "time":J
    :cond_1
    if-eqz v5, :cond_2

    .line 162
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-object v4, v0

    .line 163
    .local v4, "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    const/4 v8, 0x0

    const/16 v9, 0x80

    invoke-virtual {v4, v8, v9}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 168
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_2
    :goto_1
    return-void

    .line 153
    .restart local v2    # "activityManager":Landroid/app/IActivityManager;
    .restart local v6    # "time":J
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f1100af

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->isPressed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 157
    const/4 v5, 0x1

    goto :goto_0

    .line 165
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v6    # "time":J
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "VivoNaivgationBarHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to reach activity manager"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initButtonListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLongPressNavigationBarButtonListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLongPressNavigationBarButtonListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLongPressNavigationBarButtonListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 82
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 64
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040088

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    .line 66
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getScreenWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getNavigationBarLength()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDensity()F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v1, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->reorient()V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$1;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$OnVerticalChangedListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getNavigationBarView()Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->initView()V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->prepareNavigationBarView()V

    .line 61
    return-void
.end method

.method public onCollapseFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    const-string v2, "show_navitgation_bar_tip"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getSharePrefBooleanVaule(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 184
    .local v0, "show":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    const v2, 0x7f0e0251

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mCurrRotation:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->showLockTaskToast(IZI)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    const-string v2, "show_navitgation_bar_tip"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->putSharePrefBooleanVaule(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onExpandFinish()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x3e8

    .line 171
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    const-string v2, "hide_navitgation_bar_tip"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getSharePrefIntVaule(Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, "show":I
    if-nez v0, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    const-string v2, "hide_navitgation_bar_tip"

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->putSharePrefIntVaule(Ljava/lang/String;I)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    if-ne v0, v5, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onRotationChanged(I)V
    .locals 0
    .param p1, "newRotation"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mCurrRotation:I

    .line 134
    return-void
.end method

.method public refreshTaskLockVisibility()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 213
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mRecentContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    .line 214
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mRecentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 217
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 218
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mRecentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 219
    .local v2, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mRecentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f11027d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 220
    .local v3, "lock":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 221
    sget-boolean v4, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskModeEnabled:Z

    if-eqz v4, :cond_2

    .line 222
    if-nez v1, :cond_1

    .line 223
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->showingPin:Z

    .line 217
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iput-boolean v6, v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->showingPin:Z

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iput-boolean v6, v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->showingPin:Z

    goto :goto_1

    .line 236
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    .end local v3    # "lock":Landroid/widget/ImageView;
    :cond_3
    return-void
.end method

.method public setRecentContainer(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "container"    # Landroid/widget/LinearLayout;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mRecentContainer:Landroid/widget/LinearLayout;

    .line 98
    return-void
.end method

.method public showPopupWindowTip(I)V
    .locals 4
    .param p1, "textId"    # I

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    const-string v2, "hide_navitgation_bar_tip"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getSharePrefIntVaule(Ljava/lang/String;I)I

    move-result v0

    .line 203
    .local v0, "show":I
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->isPopupToolbarShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->dismissPopupToolbar()V

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mCurrRotation:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->showPopupToolbar(Landroid/view/View;II)V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->mLockTaskHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    const-string v2, "hide_navitgation_bar_tip"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->putSharePrefIntVaule(Ljava/lang/String;I)V

    .line 210
    :cond_1
    return-void
.end method
