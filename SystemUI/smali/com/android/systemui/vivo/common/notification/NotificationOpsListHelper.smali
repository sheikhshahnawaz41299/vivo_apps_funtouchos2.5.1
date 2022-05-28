.class public Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
.super Ljava/lang/Object;
.source "NotificationOpsListHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;,
        Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;,
        Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$ComparatorApps;,
        Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_NOTIFICATION_ITEM:I = 0x2711

.field private static final MSG_REFRESH_WHEN_PKG_ADDED:I = 0x2712

.field private static final MSG_REFRESH_WHEN_PKG_REMOVED:I = 0x2713

.field private static final MSG_REFRESH_WHEN_SD_MOUNT:I = 0x2714

.field private static final MSG_REFRESH_WHEN_SD_UNMOUNT:I = 0x2715

.field private static mInstance:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;


# instance fields
.field public TAG:Ljava/lang/String;

.field private mChangeableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContentInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDoubleInstanceListener:Landroid/content/ISmartShowContext$OnOpsChangedListener;

.field private mHandler:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

.field public mHaveNotificationPkgs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRegistered:Z

.field private mNotiLabelObserver:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;

.field private mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

.field private mNotificationService:Landroid/app/INotificationManager;

.field private mObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field public mSortedContentInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "NotificationOpsListActivity"

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mHaveNotificationPkgs:Ljava/util/HashSet;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mChangeableList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mObservers:Ljava/util/HashSet;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mIsRegistered:Z

    .line 154
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 622
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mDoubleInstanceListener:Landroid/content/ISmartShowContext$OnOpsChangedListener;

    .line 93
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .line 96
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationService:Landroid/app/INotificationManager;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getNotificationChangeAbleList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mChangeableList:Ljava/util/ArrayList;

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->refreshHaveNotificationPkgs()V

    .line 100
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mHandler:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    .line 101
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotiLabelObserver:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;

    .line 103
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->addDualInstanceContentInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->removeDualInstanceContentInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mHandler:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->addContentInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->sortByLabel(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->divideContentList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->onNotificationContentChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->removeContentInfoReplacing(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->removeContentInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mergeCloneContentInfos()V

    return-void
.end method

.method private addContentInfo(Ljava/lang/String;)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 449
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v8, "tmpApplicationInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 451
    monitor-enter p0

    .line 452
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 453
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->isShowPkgToList(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-direct {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;-><init>()V

    .line 456
    .local v0, "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mHaveNotificationPkgs:Ljava/util/HashSet;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->setAppInfo(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Landroid/content/pm/PackageManager;Ljava/util/HashSet;)V

    .line 457
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->isContentInfoExist(Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    .end local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 463
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.mms.service"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 467
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationService:Landroid/app/INotificationManager;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v6

    .line 469
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationOpsListHelper.addContentInfo,e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 474
    return-void
.end method

.method private addDualInstanceContentInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 496
    monitor-enter p0

    .line 497
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 499
    .local v0, "contetnInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 500
    new-instance v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mHaveNotificationPkgs:Ljava/util/HashSet;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/util/HashSet;Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;)V

    .line 502
    .local v1, "dualInstanceContentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 508
    .end local v0    # "contetnInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    .end local v1    # "dualInstanceContentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :cond_0
    monitor-exit p0

    .line 509
    return-void

    .line 497
    .restart local v0    # "contetnInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    .end local v0    # "contetnInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private divideContentList()V
    .locals 6

    .prologue
    .line 410
    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    const-string v4, "divideContentList()"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 416
    .local v2, "infoItem":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->isNotificationEnabled()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 417
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 420
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "infoItem":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOpsListHelper.refreshContentList enable, e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 426
    .restart local v2    # "infoItem":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->isNotificationEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 427
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 430
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "infoItem":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :catch_1
    move-exception v0

    .line 431
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOpsListHelper.refreshContentList disable, e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-exit p0

    .line 435
    return-void

    .line 433
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mInstance:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mInstance:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mInstance:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    return-object v0
.end method

.method private declared-synchronized initContentInfo()V
    .locals 9

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    const-string v3, "initContentInfo()"

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v8, "tmpApplicationInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 353
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 354
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 355
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->isShowPkgToList(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-direct {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;-><init>()V

    .line 357
    .local v0, "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mHaveNotificationPkgs:Ljava/util/HashSet;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->setAppInfo(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Landroid/content/pm/PackageManager;Ljava/util/HashSet;)V

    .line 359
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    .end local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "tmpApplicationInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 364
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "tmpApplicationInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    :try_start_3
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.mms.service"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    :try_start_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 373
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationService:Landroid/app/INotificationManager;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v6

    .line 375
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationOpsListHelper.initContentInfo e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 380
    monitor-exit p0

    return-void
.end method

.method private isContentInfoExist(Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;)Z
    .locals 4
    .param p1, "contentInfo"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 439
    .local v1, "info":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    invoke-virtual {p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    const/4 v2, 0x1

    .line 444
    .end local v1    # "info":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isShowPkgToList(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 544
    const-string v2, "com.google.android.syncadapters.calendar"

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 545
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mChangeableList:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 548
    goto :goto_0

    .line 552
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->systemAppToContrl(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mChangeableList:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->systemAppToContrl(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mChangeableList:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "com.vlife.vivo.wallpaper"

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 557
    goto :goto_0
.end method

.method private mergeCloneContentInfos()V
    .locals 7

    .prologue
    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v1, "contentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;>;"
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 333
    .local v0, "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isCloneEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    new-instance v3, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mHaveNotificationPkgs:Ljava/util/HashSet;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/util/HashSet;Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    .end local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    .end local v1    # "contentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 338
    .restart local v1    # "contentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 339
    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    .line 344
    monitor-exit p0

    .line 345
    .end local v1    # "contentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 342
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private onNotificationContentChange()V
    .locals 3

    .prologue
    .line 646
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;

    .line 648
    .local v1, "observer":Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;
    invoke-interface {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;->onNotificationContentChange()V

    goto :goto_0

    .line 651
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;
    :cond_0
    return-void
.end method

.method private refreshChangeableList()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getNotificationChangeAbleList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mChangeableList:Ljava/util/ArrayList;

    .line 525
    return-void
.end method

.method private refreshHaveNotificationPkgs()V
    .locals 7

    .prologue
    .line 252
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mHaveNotificationPkgs:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 253
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    if-nez v6, :cond_1

    .line 273
    :cond_0
    return-void

    .line 256
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    .line 257
    .local v3, "notificationData":Lcom/android/systemui/statusbar/NotificationData;
    if-eqz v3, :cond_2

    .line 258
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 259
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 260
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mHaveNotificationPkgs:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v2    # "i":I
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getOngoingData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    .line 266
    .local v4, "ongoingNotificationData":Lcom/android/systemui/statusbar/NotificationData;
    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 268
    .local v1, "activeOngoingNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 269
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 270
    .restart local v5    # "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mHaveNotificationPkgs:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private registerBroadcast()V
    .locals 4

    .prologue
    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v1, "mediaFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mIsRegistered:Z

    .line 142
    return-void
.end method

.method private releaseContentInfoList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "contentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 304
    .local v0, "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->releaseResouce(Landroid/content/Context;)V

    goto :goto_0

    .line 306
    .end local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :cond_0
    return-void
.end method

.method private removeContentInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->removeDualInstanceContentInfo(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->removeContentInfoReplacing(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method private removeContentInfoReplacing(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 483
    monitor-enter p0

    .line 484
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 485
    .local v0, "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 487
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->releaseResouce(Landroid/content/Context;)V

    .line 491
    .end local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :cond_1
    monitor-exit p0

    .line 492
    return-void

    .line 491
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeDualInstanceContentInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 513
    monitor-enter p0

    .line 514
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 515
    .local v0, "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getInstanceId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 516
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 520
    .end local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :cond_1
    monitor-exit p0

    .line 521
    return-void

    .line 520
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sortByLabel(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "sortedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;>;"
    monitor-enter p0

    .line 386
    :try_start_0
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$ComparatorApps;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$ComparatorApps;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .local v0, "comparatorApps":Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$ComparatorApps;
    :try_start_1
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 394
    return-void

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationOpsListHelper.sortByLabel, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .end local v0    # "comparatorApps":Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$ComparatorApps;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private startWatchingDoubleConfig()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mDoubleInstanceListener:Landroid/content/ISmartShowContext$OnOpsChangedListener;

    invoke-interface {v0, v1}, Landroid/content/ISmartShowContext;->startWatchingConfig(Landroid/content/ISmartShowContext$OnOpsChangedListener;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    const-string v1, "SmartShowContext.startWatchingConfig failed!!!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private systemAppToContrl(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x1

    .line 530
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.vivo.easyshare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v0

    .line 533
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 537
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->refreshChangeableList()V

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->initContentInfo()V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->sortByLabel(Ljava/util/List;)V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mergeCloneContentInfos()V

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->divideContentList()V

    .line 283
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 106
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 109
    .local v0, "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 114
    .end local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 115
    .restart local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 120
    .end local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    :cond_3
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 121
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mDoubleInstanceListener:Landroid/content/ISmartShowContext$OnOpsChangedListener;

    invoke-interface {v2, v3}, Landroid/content/ISmartShowContext;->stopWatchingConfig(Landroid/content/ISmartShowContext$OnOpsChangedListener;)V

    .line 126
    :goto_2
    return-void

    .line 123
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    const-string v3, "SmartShowContext stopWatchingConfig failed!!!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public refreshContentInfoNotificationState()V
    .locals 6

    .prologue
    .line 565
    monitor-enter p0

    .line 567
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 569
    .local v0, "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->refreshNotificationState(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V

    .line 570
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->refreshNotificationShownType(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 572
    .end local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 573
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->divideContentList()V

    .line 577
    return-void

    .line 575
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public register()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotiLabelObserver:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->registerObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;)V

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->registerBroadcast()V

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->startWatchingDoubleConfig()V

    .line 299
    return-void
.end method

.method public registerObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;)V
    .locals 4
    .param p1, "observer"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 656
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: double register by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->releaseContentInfoList(Ljava/util/List;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 326
    return-void
.end method

.method public unRegister()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mNotiLabelObserver:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->unregisterObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;)V

    .line 311
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mIsRegistered:Z

    .line 315
    :cond_0
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mDoubleInstanceListener:Landroid/content/ISmartShowContext$OnOpsChangedListener;

    invoke-interface {v0, v1}, Landroid/content/ISmartShowContext;->stopWatchingConfig(Landroid/content/ISmartShowContext$OnOpsChangedListener;)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    const-string v1, "SmartShowContext stopWatchingConfig failed!!!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 663
    return-void
.end method
