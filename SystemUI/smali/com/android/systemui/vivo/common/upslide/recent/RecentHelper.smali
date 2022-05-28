.class public Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
.super Ljava/lang/Object;
.source "RecentHelper.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
.implements Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;


# static fields
.field private static final HANDLER_THREAD_ENABLE:Z = true

.field private static final MSG_RELOAD_RECENT:I = 0x3ee

.field private static final MSG_REMOVE_EXCLUDE_RECENT:I = 0x3ed

.field private static final MSG_REMOVE_RECENT:I = 0x3e9

.field private static final MSG_UPDATE_TIME:I = 0x3ea

.field private static final MSG_WHITLE_LIST_CHANGED:I = 0x3eb

.field public static final ONE_SCREEN_RECENT_COUNT_LIMIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RecentHelper"

.field public static final VIVO_RECENT_COUNT_LIMIT:I = 0x14


# instance fields
.field private mAccurateRecentTaskItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppProcessInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseForApp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrRotation:I

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mEnableInApp:Z

.field private mForgroundAppPkg:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsVisitModeOn:Z

.field private mJulianDate:I

.field private mLauncherPackageName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockTaskClickListener:Landroid/view/View$OnClickListener;

.field private mPopupToolbarHelper:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

.field private mRecentClickListener:Landroid/view/View$OnClickListener;

.field private mRecentClickRunnable:Ljava/lang/Runnable;

.field private mRecentHandler:Landroid/os/Handler;

.field private mRecentItemsContainer:Landroid/widget/LinearLayout;

.field private mRecentLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mRecentNoneView:Landroid/widget/TextView;

.field private mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

.field private mRecentTaskItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTaskItemsLock:Ljava/lang/Object;

.field private mShare:Landroid/content/SharedPreferences;

.field private mShowSwipeRecentTip:Z

.field private mShowWhiteListTip:Z

.field private mSpeedUpStarted:Z

.field private mTaskLoader:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

.field private mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

.field private mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mForgroundAppPkg:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mBaseForApp:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAppProcessInfo:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    .line 104
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mCurrRotation:I

    .line 106
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 107
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItemsLock:Ljava/lang/Object;

    .line 119
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mIsVisitModeOn:Z

    .line 122
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentClickListener:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$2;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 212
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$3;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mLockTaskClickListener:Landroid/view/View$OnClickListener;

    .line 229
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$4;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentHandler:Landroid/os/Handler;

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mEnableInApp:Z

    .line 250
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    .line 251
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->init()V

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->handleReloadRecents()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentClickRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
    .param p1, "x1"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeLoadedRecent(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mTaskLoader:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->isValidTaskId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
    .param p1, "x1"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->startActivityLocked(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->showPopupToolbar(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->handleUpdateTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->updateWhiteListIcon()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
    .param p1, "x1"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->handleremoveExcludedRecentItem(Landroid/app/ActivityManager$RecentTaskInfo;)V

    return-void
.end method

.method private addLatestItem(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    .locals 8
    .param p1, "item"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    const/16 v7, 0x13

    const/4 v6, 0x0

    .line 459
    if-nez p1, :cond_0

    .line 483
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getItemIndex(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)I

    move-result v1

    .line 463
    .local v1, "index":I
    const-string v3, "RecentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 467
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeRecentView(I)V

    .line 470
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    .line 473
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 474
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 475
    .local v2, "lastItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    if-eqz v2, :cond_2

    .line 476
    iget v3, v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->persistentTaskId:I

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 477
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeRecentView(I)V

    .line 481
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "lastItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_2
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->addRecentView(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;I)V

    .line 482
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addRecentView(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;I)V
    .locals 4
    .param p1, "item"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    .param p2, "index"    # I

    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040089

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, "parent":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->prepareRecentItem(Landroid/view/View;Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    .line 566
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 567
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 569
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->setRecentItemWidth(Landroid/view/View;)V

    .line 570
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshContainerTaskLock()V

    .line 571
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentNoneView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    return-void
.end method

.method private addRecentViews(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;>;"
    if-eqz p1, :cond_0

    .line 608
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 609
    .local v1, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getItemIndex(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 620
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshRecentNoneView()V

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshContainerTaskLock()V

    .line 622
    return-void

    .line 613
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040089

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 614
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->prepareRecentItem(Landroid/view/View;Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    .line 616
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 617
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private clearHidedAppRecents()V
    .locals 6

    .prologue
    .line 1094
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1095
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1096
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 1097
    .local v1, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v3, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->isAppHidedInVisitMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1098
    const-string v3, "RecentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearHidedAppRecents: pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeRecentView(I)V

    .line 1095
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1102
    .end local v1    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_1
    return-void
.end method

.method private static getCurrentJulianDate()I
    .locals 6

    .prologue
    .line 703
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 704
    .local v0, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 705
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    return v1
.end method

.method private getItemIndex(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)I
    .locals 6
    .param p1, "item"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    .line 506
    const/4 v1, -0x1

    .line 507
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 508
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 509
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 510
    .local v2, "item1":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v4, v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->label:Ljava/lang/CharSequence;

    iget-object v5, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget v4, v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->instanceId:I

    iget v5, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->instanceId:I

    if-ne v4, v5, :cond_2

    iget v4, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->uid:I

    iget v5, v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->uid:I

    if-ne v4, v5, :cond_2

    .line 512
    move v1, v0

    .line 516
    .end local v2    # "item1":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_1
    return v1

    .line 508
    .restart local v2    # "item1":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getItemIndex(Ljava/lang/String;)[I
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 520
    new-array v1, v8, [I

    .line 521
    .local v1, "indexs":[I
    const/4 v6, 0x0

    aput v7, v1, v6

    .line 522
    const/4 v6, 0x1

    aput v7, v1, v6

    .line 523
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 524
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    if-ge v0, v5, :cond_0

    if-ge v4, v8, :cond_0

    .line 525
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 526
    .local v2, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v6, v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 527
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aput v0, v1, v4

    .line 524
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_0

    .line 530
    .end local v2    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_0
    return-object v1

    .restart local v2    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_1
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1
.end method

.method public static getLauncherPackageName(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 388
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 389
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v5, "RecentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launcher packageName ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2
.end method

.method private getValidPersistentTaskId(ILjava/lang/String;II)[I
    .locals 8
    .param p1, "persistentTaskId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "instanceId"    # I

    .prologue
    const/4 v7, 0x5

    .line 1255
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1256
    const/4 v4, 0x5

    :try_start_0
    new-array v1, v4, [I

    const/4 v4, 0x0

    aput p1, v1, v4

    const/4 v4, 0x1

    const/4 v6, -0x1

    aput v6, v1, v4

    const/4 v4, 0x2

    const/4 v6, -0x1

    aput v6, v1, v4

    const/4 v4, 0x3

    const/4 v6, -0x1

    aput v6, v1, v4

    const/4 v4, 0x4

    const/4 v6, -0x1

    aput v6, v1, v4

    .line 1257
    .local v1, "ids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x1

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    if-ge v3, v7, :cond_0

    .line 1258
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget-object v4, v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget v4, v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->uid:I

    if-ne p3, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget v4, v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->instanceId:I

    if-ne p4, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget-boolean v4, v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isExcluded:Z

    if-nez v4, :cond_1

    .line 1262
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget v4, v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->persistentTaskId:I

    aput v4, v1, v3

    .line 1257
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .line 1265
    :cond_0
    monitor-exit v5

    return-object v1

    .line 1266
    .end local v0    # "i":I
    .end local v1    # "ids":[I
    .end local v3    # "j":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i":I
    .restart local v1    # "ids":[I
    .restart local v3    # "j":I
    :cond_1
    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_1
.end method

.method private handleReloadRecents()V
    .locals 2

    .prologue
    .line 1164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->clearRecentTasks(Z)V

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mTaskLoader:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->loadRecentInBackground(I)V

    .line 1166
    return-void
.end method

.method private handleUpdateTime()V
    .locals 10

    .prologue
    .line 1141
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 1142
    .local v4, "now":J
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->isDateChanged()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1157
    :cond_0
    return-void

    .line 1145
    :cond_1
    const-string v6, "com.bbk.calendar"

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getItemIndex(Ljava/lang/String;)[I

    move-result-object v2

    .line 1146
    .local v2, "indexs":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_0

    .line 1147
    aget v1, v2, v0

    .line 1148
    .local v1, "index":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 1151
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 1152
    .local v3, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mTaskLoader:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-virtual {v6, v3}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->reloadRecentIcon(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    .line 1153
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1154
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->addRecentView(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;I)V

    .line 1155
    const-string v6, "RecentHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update time spends "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleremoveExcludedRecentItem(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 9
    .param p1, "task"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 596
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getRecentInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v6

    .line 597
    .local v6, "instanceId":I
    const-string v0, "RecentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleremoveExcludedRecentItem: task.persistentId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", instanceId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    iget v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v2, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    iget v7, p1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItemBuilder;->build(Landroid/content/Context;IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;II)Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    move-result-object v8

    .line 601
    .local v8, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    if-eqz v8, :cond_0

    .line 602
    invoke-virtual {p0, v8}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeRecentItem(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    .line 604
    :cond_0
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    .line 262
    :cond_0
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p0}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mTaskLoader:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    .line 264
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->registerCallback(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;)V

    .line 265
    invoke-direct {p0, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->registerStateCallBack(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .line 268
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$5;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->registerCallback(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;)V

    .line 276
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mPopupToolbarHelper:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    .line 278
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShare:Landroid/content/SharedPreferences;

    .line 279
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShare:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShare:Landroid/content/SharedPreferences;

    const-string v3, "first.add.recent"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShowSwipeRecentTip:Z

    .line 281
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShare:Landroid/content/SharedPreferences;

    const-string v3, "tip.white.list.onnext"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShowWhiteListTip:Z

    .line 284
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "RecentTask"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 285
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 286
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$6;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$6;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mHandler:Landroid/os/Handler;

    .line 302
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getCurrentJulianDate()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mJulianDate:I

    .line 303
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "enable_in_app"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mEnableInApp:Z

    .line 306
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getLauncherPackageName(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mLauncherPackageName:Ljava/util/List;

    .line 307
    return-void

    :cond_2
    move v0, v2

    .line 280
    goto :goto_0
.end method

.method private isAbandonProcessInfo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "processInfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x10

    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, "localPpidString":Ljava/lang/String;
    const/16 v1, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 825
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    const/4 v1, 0x1

    .line 828
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAppProcessInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 815
    const-string v0, "u0_a"

    .line 816
    .local v0, "head":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    const/4 v1, 0x1

    .line 819
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDateChanged()Z
    .locals 2

    .prologue
    .line 1127
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getCurrentJulianDate()I

    move-result v0

    .line 1128
    .local v0, "today":I
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mJulianDate:I

    if-ne v1, v0, :cond_0

    .line 1129
    const/4 v1, 0x0

    .line 1132
    :goto_0
    return v1

    .line 1131
    :cond_0
    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mJulianDate:I

    .line 1132
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isValidTaskId(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1243
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1244
    if-ltz p1, :cond_1

    .line 1245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1246
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mAccurateRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget v1, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->taskId:I

    if-ne p1, v1, :cond_0

    .line 1247
    const/4 v1, 0x1

    monitor-exit v2

    .line 1250
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 1245
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 1251
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private killProcessUseCmd(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 832
    const-string v0, "RecentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "killProcessUseCmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->shell_cmd(Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method private prepareRecentItem(Landroid/view/View;Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    .line 535
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 539
    const v3, 0x7f11027b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 540
    .local v2, "thumb":Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    const v3, 0x7f11027e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-boolean v3, p2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    if-eqz v3, :cond_2

    .line 543
    const v3, 0x7f11027c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    :cond_2
    const v3, 0x7f11027d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 545
    .local v0, "lockTask":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mLockTaskClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, "targetInteract":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->isDensityLowLevel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 552
    move-object v1, v2

    .line 556
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 558
    const/4 v1, 0x0

    .line 559
    goto :goto_0

    .line 555
    :cond_3
    move-object v1, p1

    goto :goto_1
.end method

.method private refreshContainer()V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 854
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshRecentNoneView()V

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_0
.end method

.method private refreshContainerTaskLock()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->refreshTaskLockVisibility()V

    .line 862
    return-void
.end method

.method private refreshRecentItemWidth()V
    .locals 4

    .prologue
    .line 889
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 890
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 891
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 892
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 893
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->setRecentItemWidth(Landroid/view/View;)V

    .line 890
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 896
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private refreshRecentNoneView()V
    .locals 3

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 866
    .local v0, "show":Z
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 867
    const/4 v0, 0x0

    .line 871
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentNoneView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    return-void

    .line 869
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 871
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private refreshSecondItem(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    .locals 4
    .param p1, "newItem"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    const/4 v3, 0x1

    .line 486
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 490
    .local v0, "oldItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->label:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 492
    :cond_2
    const-string v1, "RecentHelper"

    const-string v2, "not a same app, return!"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeRecentView(I)V

    .line 496
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->addRecentView(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;I)V

    .line 497
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerStateCallBack(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->registerStateCallBack(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;)V

    .line 971
    :cond_0
    return-void
.end method

.method private reloadRecents()V
    .locals 2

    .prologue
    const/16 v1, 0x3ee

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1161
    return-void
.end method

.method private removeLoadedRecent(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    .locals 21
    .param p1, "item"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "activity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 740
    .local v6, "am":Landroid/app/ActivityManager;
    if-eqz v6, :cond_0

    .line 741
    const-string v17, "com.iqoo.secure"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 742
    new-instance v10, Landroid/content/Intent;

    const-string v17, "intent.action.remove_recent_task"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 812
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->persistentTaskId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->uid:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->instanceId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getValidPersistentTaskId(ILjava/lang/String;II)[I

    move-result-object v12

    .line 746
    .local v12, "persistentTaskId":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    .line 747
    aget v17, v12, v8

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 748
    aget v17, v12, v8

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 746
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 751
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->isBgStartApp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 753
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 754
    .local v13, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 755
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    .line 756
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v16

    .line 757
    .local v16, "runningAppProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v16, :cond_0

    .line 758
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 759
    .local v15, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v17, v0

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const-string v17, "com.tencent.mm:push"

    iget-object v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 760
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 761
    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getProcessInstanceId(I)I

    move-result v14

    .line 762
    .local v14, "processInstanceId":I
    const-string v17, "RecentHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pid= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", processInstanceId= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", item.instanceId= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->instanceId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->instanceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 768
    .end local v14    # "processInstanceId":I
    :cond_5
    const-string v17, "RecentHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "killBackgroundProcesses rapi.pid= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", processName= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "kill -9 "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 770
    .local v11, "killCmd":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->killProcessUseCmd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 775
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "killCmd":Ljava/lang/String;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v16    # "runningAppProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v7

    .line 776
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 779
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 780
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->instanceId:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v6, v0, v1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 783
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private removeRecentView(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 576
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 579
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 580
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshContainer()V

    .line 581
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshContainerTaskLock()V

    goto :goto_0
.end method

.method private setRecentItemWidth(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 875
    const/16 v2, 0x10e

    .line 876
    .local v2, "itemWidth":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v0

    .line 877
    .local v0, "dimenUtils":Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;
    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mCurrRotation:I

    if-nez v4, :cond_0

    .line 878
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getScreenWidth()I

    move-result v4

    div-int/lit8 v2, v4, 0x4

    .line 882
    :goto_0
    const v4, 0x7f11027a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 883
    .local v1, "item":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 884
    .local v3, "lps":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 885
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    return-void

    .line 880
    .end local v1    # "item":Landroid/widget/FrameLayout;
    .end local v3    # "lps":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerContentLength()I

    move-result v4

    div-int/lit8 v2, v4, 0x4

    goto :goto_0
.end method

.method private shell_cmd(Ljava/lang/String;)V
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 837
    const-string v3, "vivo_daemon.service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/daemon/VivoDmServiceProxy;

    move-result-object v2

    .line 839
    .local v2, "vivoDmSrvProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    const/4 v1, 0x0

    .line 840
    .local v1, "result":I
    if-eqz v2, :cond_0

    .line 842
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShell(Ljava/lang/String;)I

    move-result v1

    .line 843
    const-string v3, "RecentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run shell sync cmd sucess, result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "err":Ljava/lang/Exception;
    const-string v3, "RecentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run shell cmd failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    .end local v0    # "err":Ljava/lang/Exception;
    :cond_0
    const-string v3, "RecentHelper"

    const-string v4, "Cannot connect to the vivo_daemon.service"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showPopupToolbar(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tip"    # I

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mPopupToolbarHelper:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mPopupToolbarHelper:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->showPopupToolbar(Landroid/view/View;I)V

    .line 657
    :cond_0
    return-void
.end method

.method private startActivityLocked(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    .locals 5
    .param p1, "item"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    .line 1181
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    const-string v3, "com.google.android.googlequicksearchbox"

    iget-object v4, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1186
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    .local v0, "comp":Landroid/content/ComponentName;
    const v3, 0x10104000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1201
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1202
    iget v3, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->instanceId:I

    if-lez v3, :cond_0

    .line 1203
    const-string v3, "android.intent.extra.init_instance"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1209
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1194
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    .restart local v0    # "comp":Landroid/content/ComponentName;
    const/high16 v3, 0x30200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1206
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1207
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateRecentTaskIdList()V
    .locals 5

    .prologue
    .line 1212
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1213
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v2, 0x19

    const/16 v3, 0xf

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v1

    .line 1219
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v2, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->start()V

    .line 1240
    return-void
.end method

.method private updateTime()V
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1138
    return-void
.end method

.method private updateWhiteListIcon()V
    .locals 9

    .prologue
    const v8, 0x7f11027c

    const/4 v7, 0x0

    .line 310
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 311
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 312
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 313
    .local v1, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 314
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    const-string v4, "RecentHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viewGroup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-nez v3, :cond_0

    .line 311
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iget-object v4, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->isPkgProtected(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->setProtected(Z)V

    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    invoke-virtual {v1, v7}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->setProtected(Z)V

    goto :goto_1

    .line 326
    .end local v1    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method


# virtual methods
.method public addRecentTasks(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "container"    # Landroid/widget/LinearLayout;
    .param p2, "noneView"    # Landroid/widget/TextView;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    .line 357
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mPopupToolbarHelper:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->setRecentItemsContainer(Landroid/widget/LinearLayout;)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    .line 360
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->init(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->setRecentItemsContainer(Landroid/widget/LinearLayout;)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->setUnitCountLimit(I)V

    .line 364
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentNoneView:Landroid/widget/TextView;

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->updateRecentTasks()V

    .line 367
    return-void
.end method

.method public bringRecentDummyViewToFront(Z)V
    .locals 1
    .param p1, "bringToFront"    # Z

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->bringRecentDummyViewToFront(Z)V

    .line 727
    :cond_0
    return-void
.end method

.method public checkRecentsValidity(Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "tasks"    # Ljava/util/ArrayList;

    .prologue
    .line 434
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    const/4 v1, 0x0

    .line 438
    .local v1, "index":I
    const/4 v0, 0x0

    .line 439
    .local v0, "hasInValid":Z
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 441
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 442
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 443
    .local v2, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget v4, v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->persistentTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 444
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 445
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 446
    const/4 v0, 0x1

    .line 447
    goto :goto_1

    .line 449
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 450
    goto :goto_1

    .line 452
    .end local v2    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_3
    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshContainer()V

    .line 454
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshContainerTaskLock()V

    goto :goto_0
.end method

.method public clearRecentTasks(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    .line 684
    const-string v3, "RecentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearRecentTasks, force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mTaskLoader:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->cancelLoading()V

    .line 686
    if-eqz p1, :cond_1

    .line 687
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 688
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 689
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshRecentNoneView()V

    .line 700
    :cond_0
    return-void

    .line 691
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 692
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 693
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 694
    .local v1, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    const-string v3, "RecentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearRecentTaskspkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isProtected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-boolean v3, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->isClearRecentTaskEnable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 696
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeRecentView(I)V

    .line 692
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public disabledUpSlideForSetting()Z
    .locals 4

    .prologue
    .line 370
    const-string v1, "RecentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnableInApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mEnableInApp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mEnableInApp:Z

    if-nez v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getForegroundApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "foregroundApp":Ljava/lang/String;
    const-string v1, "RecentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "foregroundApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mLauncherPackageName:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mLauncherPackageName:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    const/4 v1, 0x1

    .line 379
    .end local v0    # "foregroundApp":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dismissPopupToolbar()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mPopupToolbarHelper:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mPopupToolbarHelper:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->dismissPopupToolbar()V

    .line 663
    :cond_0
    return-void
.end method

.method public getForegroundApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 928
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getForegroundApp(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundApp(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseOnTopActivity"    # Z

    .prologue
    .line 932
    if-nez p1, :cond_0

    .line 933
    const/4 v3, 0x0

    .line 953
    :goto_0
    return-object v3

    .line 935
    :cond_0
    const/4 v3, 0x0

    .line 936
    .local v3, "foregndAppName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 938
    .local v1, "activityMgr":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/ActivityManager;

    move-object v1, v0

    .line 940
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 941
    .local v4, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz p2, :cond_1

    .line 942
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 947
    :goto_1
    const-string v5, "RecentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "foregroundAppName is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/4 v1, 0x0

    .line 952
    goto :goto_0

    .line 944
    :cond_1
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 948
    .end local v4    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v2

    .line 949
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "RecentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getForegndApp error! e : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    const/4 v1, 0x0

    .line 952
    goto :goto_0

    .line 951
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const/4 v1, 0x0

    throw v5
.end method

.method public handleRemoveLoadedRecent(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    const/16 v1, 0x3e9

    .line 731
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 736
    return-void
.end method

.method public isAppHidedInVisitMode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mIsVisitModeOn:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->getCurrentBuildVersion()I

    move-result v0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_1

    .line 1107
    :cond_0
    const/4 v0, 0x0

    .line 1109
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->isAppHidedInVisitMode(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isClearRecentTaskEnable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 957
    const-string v0, "RecentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isClearRecentTaskEnable: isForegroundAppProtetced==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->isForegroundAppProtetced()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v0, "RecentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isClearRecentTaskEnable: is foreground app?==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mForgroundAppPkg:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->isForegroundAppProtetced()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mForgroundAppPkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mForgroundAppPkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mBaseForApp:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mBaseForApp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 962
    :cond_1
    const/4 v0, 0x0

    .line 964
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPkgProtected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->isPkgProtected(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPopupToolbarShowing()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mPopupToolbarHelper:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    if-nez v0, :cond_0

    .line 667
    const/4 v0, 0x0

    .line 669
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mPopupToolbarHelper:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->isPopupToolbarShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentNoneView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentNoneView:Landroid/widget/TextView;

    const v1, 0x7f0e0204

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentNoneView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 1078
    :cond_0
    return-void
.end method

.method public onDateChanged()V
    .locals 0

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->updateTime()V

    .line 998
    return-void
.end method

.method public onFontChanged()V
    .locals 0

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->reloadRecents()V

    .line 1008
    return-void
.end method

.method public onFontSizeChanged()V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->reloadRecents()V

    .line 1013
    return-void
.end method

.method public onForegroundActivitiesChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "oldPkg"    # Ljava/lang/String;
    .param p2, "newPkg"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v1, "RecentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSpeedUpStarted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mSpeedUpStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mSpeedUpStarted:Z

    if-nez v1, :cond_1

    .line 333
    const/4 v0, 0x1

    .line 334
    .local v0, "loadType":I
    if-eqz p2, :cond_0

    const-string v1, "com.bbk.launcher2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "com.bbk.launcher2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    const/4 v0, 0x2

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mTaskLoader:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->loadRecentInBackground(I)V

    .line 340
    if-eqz p2, :cond_1

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "com.bbk.launcher2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$7;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    .end local v0    # "loadType":I
    :cond_1
    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->reloadRecents()V

    .line 1018
    return-void
.end method

.method public onPackageChanged(ILandroid/content/Intent;)V
    .locals 13
    .param p1, "type"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1033
    const-string v10, "RecentHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPackageChanged, type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getLauncherPackageName(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mLauncherPackageName:Ljava/util/List;

    .line 1035
    packed-switch p1, :pswitch_data_0

    .line 1071
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1038
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1039
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 1042
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 1043
    .local v8, "pkgName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1046
    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItemsLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1047
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getItemIndex(Ljava/lang/String;)[I

    move-result-object v4

    .line 1048
    .local v4, "indexs":[I
    array-length v10, v4

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1049
    aget v3, v4, v1

    .line 1050
    .local v3, "index":I
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeRecentView(I)V

    .line 1048
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1052
    .end local v3    # "index":I
    :cond_1
    monitor-exit v11

    goto :goto_0

    .end local v1    # "i":I
    .end local v4    # "indexs":[I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1057
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    :pswitch_2
    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1058
    .local v7, "pkgList":[Ljava/lang/String;
    if-eqz v7, :cond_0

    array-length v10, v7

    if-lez v10, :cond_0

    .line 1059
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v6, v0, v2

    .line 1060
    .local v6, "pkg":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItemsLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1061
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getItemIndex(Ljava/lang/String;)[I

    move-result-object v4

    .line 1062
    .restart local v4    # "indexs":[I
    array-length v10, v4

    add-int/lit8 v1, v10, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_2

    .line 1063
    aget v3, v4, v1

    .line 1064
    .restart local v3    # "index":I
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeRecentView(I)V

    .line 1062
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1066
    .end local v3    # "index":I
    :cond_2
    monitor-exit v11

    .line 1059
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1066
    .end local v1    # "i":I
    .end local v4    # "indexs":[I
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10

    .line 1035
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPanelViewCollapseFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->scrollTo(II)V

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->runRecentClickRunnable()V

    .line 925
    return-void
.end method

.method public onPanelViewExpandFinish()V
    .locals 0

    .prologue
    .line 1270
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->showRecentTipIfNeed()V

    .line 1271
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->updateRecentTaskIdList()V

    .line 1272
    return-void
.end method

.method public onPhoneClearFinished()V
    .locals 3

    .prologue
    .line 1113
    const-string v0, "RecentHelper"

    const-string v1, "onPhoneClearFinished"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItemsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1115
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$9;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1123
    monitor-exit v1

    .line 1124
    return-void

    .line 1123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRotationChanged(I)V
    .locals 3
    .param p1, "newRotation"    # I

    .prologue
    .line 709
    const-string v0, "RecentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mCurrRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mCurrRotation:I

    .line 711
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->refreshAnimStyle(I)V

    .line 714
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshRecentItemWidth()V

    .line 715
    return-void
.end method

.method public onSpeedUpFinished(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 632
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mSpeedUpStarted:Z

    .line 633
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getForegroundApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mForgroundAppPkg:Ljava/lang/String;

    .line 634
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getForegroundApp(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mBaseForApp:Ljava/lang/String;

    .line 635
    const-string v1, "PKGNAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "pkg":Ljava/lang/String;
    const-string v1, "RecentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 638
    const-string v1, "com.bbk.SuperPowerSave"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->clearRecentTasks(Z)V

    .line 646
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->clearRecentTasks(Z)V

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mTaskLoader:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->loadRecentInBackground(I)V

    goto :goto_0
.end method

.method public onSpeedUpStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 625
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getForegroundApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mForgroundAppPkg:Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getForegroundApp(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mBaseForApp:Ljava/lang/String;

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mSpeedUpStarted:Z

    .line 628
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->clearRecentTasks(Z)V

    .line 629
    return-void
.end method

.method public onSpeedUpTimeout()V
    .locals 2

    .prologue
    .line 649
    const-string v0, "RecentHelper"

    const-string v1, "Speed up time out!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mSpeedUpStarted:Z

    .line 651
    return-void
.end method

.method public declared-synchronized onTasksLoaded(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "loadType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;>;"
    monitor-enter p0

    :try_start_0
    const-string v3, "RecentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTasksLoaded, loadType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 405
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentTaskItems:Ljava/util/ArrayList;

    .line 407
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 408
    :cond_1
    const-string v3, "RecentHelper"

    const-string v4, "recents list is null, return!"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :goto_0
    monitor-exit p0

    return-void

    .line 412
    :cond_2
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 414
    :sswitch_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 415
    .local v0, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->addLatestItem(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    .end local v0    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 418
    :sswitch_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 419
    .local v1, "latestItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->addLatestItem(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    .line 420
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 421
    const-string v3, "RecentHelper"

    const-string v4, "recents\' count less than 2, return!"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 425
    .local v2, "secondItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->refreshSecondItem(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    goto :goto_0

    .line 428
    .end local v1    # "latestItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    .end local v2    # "secondItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->addRecentViews(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch
.end method

.method public onThemeChanged()V
    .locals 4

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$8;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 983
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->updateTime()V

    .line 988
    return-void
.end method

.method public onTimeTick()V
    .locals 0

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->updateTime()V

    .line 993
    return-void
.end method

.method public onTimeZoneChanged()V
    .locals 0

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->updateTime()V

    .line 1003
    return-void
.end method

.method public onVisitModeChanged(Z)V
    .locals 4
    .param p1, "isVisitModeOn"    # Z

    .prologue
    .line 1081
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->getCurrentBuildVersion()I

    move-result v0

    .line 1082
    .local v0, "androidVersion":I
    const-string v1, "RecentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVisitModeChanged, isVisitModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", androidVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 1085
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mIsVisitModeOn:Z

    .line 1086
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->clearRecentTasks(Z)V

    .line 1091
    :goto_0
    return-void

    .line 1088
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mIsVisitModeOn:Z

    .line 1089
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->clearHidedAppRecents()V

    goto :goto_0
.end method

.method public removeExcludedRecentItem(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 2
    .param p1, "task"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 593
    return-void
.end method

.method public removeRecentItem(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->getItemIndex(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)I

    move-result v0

    .line 586
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 587
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeRecentView(I)V

    .line 589
    :cond_0
    return-void
.end method

.method public runRecentClickRunnable()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentClickRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentClickRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1171
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isLockTaskPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->setLockTaskPending(Z)V

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->lockCurrentTask()V

    .line 1175
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentClickRunnable:Ljava/lang/Runnable;

    .line 1177
    :cond_1
    return-void
.end method

.method public setDummyView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentScrollView:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->setDummyView(Landroid/widget/ImageView;)V

    .line 721
    :cond_0
    return-void
.end method

.method public setEnableInApp(Z)V
    .locals 3
    .param p1, "enableInApp"    # Z

    .prologue
    .line 398
    const-string v0, "RecentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableInApp >>> enableInApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mEnableInApp:Z

    .line 400
    return-void
.end method

.method public showRecentTipIfNeed()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 899
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 903
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShowSwipeRecentTip:Z

    if-eqz v2, :cond_2

    .line 904
    const v2, 0x7f0e0207

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->showPopupToolbar(Landroid/view/View;I)V

    .line 905
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "first.add.recent"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 906
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 907
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShowSwipeRecentTip:Z

    goto :goto_0

    .line 908
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShowWhiteListTip:Z

    if-eqz v2, :cond_0

    .line 909
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShare:Landroid/content/SharedPreferences;

    const-string v3, "upslide_switcher_speedup_clicks"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 910
    .local v0, "speedUpCount":I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 913
    const v2, 0x7f0e0208

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->showPopupToolbar(Landroid/view/View;I)V

    .line 914
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "tip.white.list.onnext"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 915
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 916
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mShowWhiteListTip:Z

    goto :goto_0
.end method

.method public updateRecentTasks()V
    .locals 2

    .prologue
    .line 1021
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->onUpslideIniting(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V

    .line 1024
    :cond_0
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1025
    const-string v0, "RecentHelper"

    const-string v1, "updateRecentTasks >>> load all current recent tasks"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->fetchListsManually()V

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->mTaskLoader:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->loadRecentInBackground(I)V

    .line 1029
    :cond_1
    return-void
.end method
