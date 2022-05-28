.class public Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;
.super Ljava/lang/Object;
.source "SceneNotificationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneNotificationManager"

.field private static final mNotificationWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;


# instance fields
.field private mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mContext:Landroid/content/Context;

.field private mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mSpsOn:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->sInstance:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    .line 30
    new-instance v0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager$1;

    invoke-direct {v0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager$1;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mNotificationWhiteList:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mSpsOn:Z

    .line 39
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mContext:Landroid/content/Context;

    .line 40
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 42
    return-void
.end method

.method private clearAllNotifications()V
    .locals 6

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "com.android.internal.statusbar.IStatusBarService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    :goto_0
    :try_start_1
    const-string v3, "onClearAllNotificationsIgnoreFlags"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 97
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 98
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SceneNotificationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "SceneNotificationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private clearAllNotificationsIgnoreFlags(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "whiteList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 75
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 78
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 80
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onNotificationClear(Landroid/service/notification/StatusBarNotification;)V

    .line 78
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 84
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->sInstance:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->sInstance:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->sInstance:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    return-object v0
.end method

.method private updateSpsIconStatus()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mSpsOn:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSps(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePs()V

    .line 118
    return-void
.end method


# virtual methods
.method public enterVisitorMode()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->clearAllNotifications()V

    .line 68
    return-void
.end method

.method public isNotificationAvailableOnSps(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mNotificationWhiteList:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpsState()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mSpsOn:Z

    return v0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 53
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getIconPolicy()Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 54
    return-void
.end method

.method public updateSpsModeStatus(Z)V
    .locals 3
    .param p1, "spsOn"    # Z

    .prologue
    .line 57
    const-string v0, "SceneNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpsOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mSpsOn:Z

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mSpsOn:Z

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mNotificationWhiteList:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->clearAllNotificationsIgnoreFlags(Ljava/util/Set;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->updatePartitionTitles()V

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->updateSpsIconStatus()V

    .line 64
    return-void
.end method
