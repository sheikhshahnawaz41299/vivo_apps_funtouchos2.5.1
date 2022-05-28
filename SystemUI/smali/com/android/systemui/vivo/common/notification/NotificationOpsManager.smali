.class public Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
.super Ljava/lang/Object;
.source "NotificationOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;
    }
.end annotation


# static fields
.field private static final APP_LIST_CONTENT_URI:Landroid/net/Uri;

.field public static final DISABLE_KEYGUARD_NOTIFICATION:Ljava/lang/String; = "0"

.field public static final DISABLE_NOTIFICATION_DETAILS:Ljava/lang/String; = "0"

.field public static final ENABLE_KEYGUARD_NOTIFICATION:Ljava/lang/String; = "1"

.field public static final ENABLE_NOTIFICATION_DETAILS:Ljava/lang/String; = "1"

.field private static final MSG_ON_NOTIFICATION_OPS_CHANGE:I = 0x3eb

.field private static final MSG_ON_SECURE_KEYGUARD_DISABLED:I = 0x3ea

.field private static final MSG_ON_SECURE_KEYGUARD_ENABLED:I = 0x3e9

.field private static final MSG_REQUEST_READ_CONFIG_LIST:I = 0x3ec

.field public static final NOTIFICATION_TIP_STYLE_HEADSUP:Ljava/lang/String; = "1"

.field public static final NOTIFICATION_TIP_STYLE_NONE:Ljava/lang/String; = "0"

.field public static final NOTIFICATION_TIP_STYLE_TICKER:Ljava/lang/String; = "2"

.field public static final NOTIFICATION_TOP_PREVIEW_OFF:Ljava/lang/String; = "0"

.field public static final NOTIFICATION_TOP_PREVIEW_ON:Ljava/lang/String; = "1"

.field private static final SOFTWARE_LOCK_UPDATE_ACTION:Ljava/lang/String; = "com.vivo.action.SOFTWARE_LOCK_LIST_CHANGE"

.field private static final TAG:Ljava/lang/String; = "NotificationOpsManager"

.field private static sInstance:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;


# instance fields
.field private PKG_CHANGED_ARRAY:[[Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

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

.field private mContext:Landroid/content/Context;

.field private mDesktopAppIconBadgedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopAppIconFileObserver:Landroid/os/FileObserver;

.field private mEditorDefault:Landroid/content/SharedPreferences$Editor;

.field private mEditorForLauncher:Landroid/content/SharedPreferences$Editor;

.field private mEditorForLocal:Landroid/content/SharedPreferences$Editor;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIManagerSavedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mLockedAppSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationService:Landroid/app/INotificationManager;

.field private mObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSharePreferenceDefault:Landroid/content/SharedPreferences;

.field private mSharePreferenceForLauncher:Landroid/content/SharedPreferences;

.field private mSharePreferenceForLocal:Landroid/content/SharedPreferences;

.field private mSoftLockChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .line 70
    const-string v0, "content://com.iqoo.secure.provider.secureprovider/software_lock_app_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->APP_LIST_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mIManagerSavedAppList:Ljava/util/List;

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mChangeableList:Ljava/util/ArrayList;

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mDesktopAppIconBadgedList:Ljava/util/ArrayList;

    .line 73
    new-array v3, v8, [[Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "com.android.dialer"

    aput-object v5, v4, v6

    const-string v5, "com.android.mms"

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "com.android.phone"

    aput-object v5, v4, v6

    const-string v5, "com.android.mms.service"

    aput-object v5, v4, v7

    aput-object v4, v3, v7

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->PKG_CHANGED_ARRAY:[[Ljava/lang/String;

    .line 76
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLock:Ljava/lang/Object;

    .line 77
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLockedAppSet:Ljava/util/Set;

    .line 78
    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSoftLockChanged:Z

    .line 80
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    .line 87
    new-instance v3, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v3, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$3;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mHandler:Landroid/os/Handler;

    .line 205
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    .line 206
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mNotificationService:Landroid/app/INotificationManager;

    .line 208
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mPm:Landroid/content/pm/PackageManager;

    .line 209
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isSupportSecurceConfig()Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    invoke-static {}, Lcom/android/systemui/vivo/common/notification/FileParser;->readNotificationChangeableList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mChangeableList:Ljava/util/ArrayList;

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->observeChangeableListFromServer()V

    .line 212
    invoke-static {}, Lcom/android/systemui/vivo/common/notification/FileParser;->readDesktopAppIconBadgedList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mDesktopAppIconBadgedList:Ljava/util/ArrayList;

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->observeAppIconBadgedListFromServer()V

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceDefault:Landroid/content/SharedPreferences;

    .line 217
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceDefault:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    .line 218
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    const-string v4, "desktop_app_icon_badge"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceForLauncher:Landroid/content/SharedPreferences;

    .line 219
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceForLauncher:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorForLauncher:Landroid/content/SharedPreferences$Editor;

    .line 221
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    const-string v4, "desktop_app_icon_badge_local"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceForLocal:Landroid/content/SharedPreferences;

    .line 222
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceForLocal:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorForLocal:Landroid/content/SharedPreferences$Editor;

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "intent.action.notifcation.ops.changed"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isSupportSecurceConfig()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    const-string v3, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_StatusBar"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "com.vivo.action.SOFTWARE_LOCK_LIST_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->queryLockedAppListBackground()V

    .line 238
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isSupportSecurceConfig()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "Notification"

    aput-object v3, v1, v6

    const-string v3, "DesktopIcon"

    aput-object v3, v1, v7

    .line 240
    .local v1, "identifiers":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->requestReadConfigList([Ljava/lang/String;)V

    .line 241
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "Notification"

    aput-object v4, v3, v6

    const-string v4, "DesktopIcon"

    aput-object v4, v3, v7

    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->updateConfigList([Ljava/lang/String;)V

    .line 243
    .end local v1    # "identifiers":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSoftLockChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->queryLockedAppList()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setAppLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->clearAllAppLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->requestReadConfigList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->updateConfigList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mChangeableList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mDesktopAppIconBadgedList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setAllKeyguardNotificationDetailsEnabled(Z)V

    return-void
.end method

.method private changePkgFromIManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 850
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->PKG_CHANGED_ARRAY:[[Ljava/lang/String;

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->PKG_CHANGED_ARRAY:[[Ljava/lang/String;

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 852
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->PKG_CHANGED_ARRAY:[[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object p1, v1, v0

    .line 855
    .end local p1    # "pkg":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 850
    .restart local p1    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clearAllAppLocked()V
    .locals 2

    .prologue
    .line 784
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLockedAppSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 786
    monitor-exit v1

    .line 787
    return-void

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .line 201
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    return-object v0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 398
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    const-string v2, "com.vivo.game"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.vivo.PCTools"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.bbk.PCTools"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    :cond_0
    const/4 v2, 0x1

    .line 407
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 407
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private observeAppIconBadgedListFromServer()V
    .locals 2

    .prologue
    .line 382
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$5;

    const-string v1, "/data/bbkcore/desktop_app_icon_badged_list_server.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$5;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mDesktopAppIconFileObserver:Landroid/os/FileObserver;

    .line 392
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mDesktopAppIconFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 393
    return-void
.end method

.method private observeChangeableListFromServer()V
    .locals 2

    .prologue
    .line 367
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$4;

    const-string v1, "/data/bbkcore/changeable_shield_list_server.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$4;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mFileObserver:Landroid/os/FileObserver;

    .line 378
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 379
    return-void
.end method

.method private onDesktopAppIconBadgeEnabledChange(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 693
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;

    .line 695
    .local v1, "observer":Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;->onDesktopAppIconBadgeEnabledChange(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 698
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;
    :cond_0
    return-void
.end method

.method private onKeyguardNotificationDetailsEnabledChange(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 685
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;

    .line 687
    .local v1, "observer":Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;->onKeyguardNotificationDetailsEnabledChange(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 690
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;
    :cond_0
    return-void
.end method

.method private onKeyguardNotificationEnabledChange(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 677
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;

    .line 679
    .local v1, "observer":Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;->onKeyguardNotificationEnabledChange(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 682
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;
    :cond_0
    return-void
.end method

.method private onNotificationEnabledChange(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 669
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;

    .line 671
    .local v1, "observer":Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;->onNotificationEnabledChange(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 674
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;
    :cond_0
    return-void
.end method

.method private queryLockedAppList()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 819
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 820
    .local v10, "savedAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 821
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 822
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 823
    .local v9, "pkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 825
    .local v8, "locked":I
    :try_start_0
    sget-object v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->APP_LIST_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "packagename"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "locked"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 826
    if-eqz v6, :cond_2

    .line 827
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 829
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 830
    if-ne v8, v11, :cond_0

    .line 831
    const/4 v1, 0x1

    invoke-direct {p0, v9, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->updateAppLocked(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 835
    :catch_0
    move-exception v7

    .line 836
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    if-eqz v6, :cond_1

    .line 839
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 842
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 838
    :cond_2
    if-eqz v6, :cond_1

    .line 839
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 838
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 839
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private queryLockedAppListBackground()V
    .locals 1

    .prologue
    .line 805
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$6;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$6;->start()V

    .line 812
    return-void
.end method

.method private requestReadConfigList([Ljava/lang/String;)V
    .locals 4
    .param p1, "identifiers"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0x3ec

    .line 164
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    return-void
.end method

.method private setAllKeyguardNotificationDetailsEnabled(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 485
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 486
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 487
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 488
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 489
    .local v0, "changeable":Z
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 491
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mChangeableList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mChangeableList:Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 492
    const/4 v0, 0x1

    .line 501
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 502
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 503
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setKeyguardNotificationDetailsEnabled(Ljava/lang/String;IZ)V

    .line 504
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setKeyguardNotificationDetailsEnabled(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mChangeableList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mChangeableList:Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 497
    const/4 v0, 0x1

    goto :goto_1

    .line 507
    .end local v0    # "changeable":Z
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    return-void
.end method

.method private setAppLocked(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "locked"    # Z

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->updateAppLocked(Ljava/lang/String;Z)V

    .line 765
    monitor-exit v1

    .line 766
    return-void

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateAppLocked(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "locked"    # Z

    .prologue
    .line 769
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->changePkgFromIManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "changedPkg":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 771
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLockedAppSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLockedAppSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLockedAppSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 777
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLockedAppSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateConfigList([Ljava/lang/String;)V
    .locals 3
    .param p1, "identifiers"    # [Ljava/lang/String;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;[Ljava/lang/String;)V

    const-string v2, "updateConfigList"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method


# virtual methods
.method public areNotificationsEnabledByPkg(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 353
    const/4 v1, 0x0

    .line 355
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 356
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mNotificationService:Landroid/app/INotificationManager;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, p1, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 358
    :goto_0
    return v2

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "instanceId"    # I

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, "enable":Z
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->areNotificationsEnabledForPackageForDualInstance(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v1

    .line 346
    .end local v1    # "enable":Z
    :goto_0
    return v1

    .line 341
    .restart local v1    # "enable":Z
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mNotificationService:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 344
    .end local v1    # "enable":Z
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationOpsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationOpsManager.areNotificationsEnabledByPkg(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public changePkgFromNotification(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 859
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->PKG_CHANGED_ARRAY:[[Ljava/lang/String;

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->PKG_CHANGED_ARRAY:[[Ljava/lang/String;

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->PKG_CHANGED_ARRAY:[[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object p1, v1, v0

    .line 864
    .end local p1    # "pkg":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 859
    .restart local p1    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public enableTopPreView(Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationEnabled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationDetailsEnabled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "newDetails":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 632
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 633
    return-void

    .line 628
    .end local v0    # "newDetails":Ljava/lang/String;
    :cond_0
    const-string v1, "0"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    goto :goto_1

    :cond_2
    const-string v1, "0"

    goto :goto_2
.end method

.method public getNotificationChangeAbleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mChangeableList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNotificationTipStyle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceDefault:Landroid/content/SharedPreferences;

    const-string v2, "notification_top_preview_type"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "type":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    const-string v0, "1"

    .line 617
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNotificationTipStyle(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    .line 598
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.mtbf.test"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    const-string v0, "0"

    .line 607
    :goto_0
    return-object v0

    .line 602
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 603
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isTopPreViewEnabled(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getNotificationTipStyle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 607
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public isAppLockedByIManager(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 795
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mLockedAppSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const/4 v0, 0x1

    monitor-exit v1

    .line 799
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDesktopAppIconBadgeAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 510
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mDesktopAppIconBadgedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mDesktopAppIconBadgedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mDesktopAppIconBadgedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    sget-object v1, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->DESKTOP_ICON_APP_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopAppIconBadgeEnable(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v5, 0x1

    .line 523
    const-string v0, ""

    .line 524
    .local v0, "instanceFlag":Ljava/lang/String;
    if-gtz p2, :cond_0

    .line 525
    const-string v0, ""

    .line 531
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isDesktopAppIconBadgeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    const/4 v1, 0x1

    .line 533
    .local v1, "isBadged":Z
    const-string v2, "com.android.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceForLauncher:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.dialer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 540
    .end local v1    # "isBadged":Z
    :goto_1
    return v1

    .line 528
    :cond_0
    const-string v0, "1"

    goto :goto_0

    .line 536
    .restart local v1    # "isBadged":Z
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceForLauncher:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    .line 540
    .end local v1    # "isBadged":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isDesktopAppIconBadgeEnableForLocal(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v5, 0x1

    .line 545
    const-string v0, ""

    .line 546
    .local v0, "instanceFlag":Ljava/lang/String;
    if-gtz p2, :cond_0

    .line 547
    const-string v0, ""

    .line 553
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isDesktopAppIconBadgeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    const/4 v1, 0x1

    .line 555
    .local v1, "isLocalBadged":Z
    const-string v2, "com.android.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceForLocal:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.dialer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 562
    .end local v1    # "isLocalBadged":Z
    :goto_1
    return v1

    .line 550
    :cond_0
    const-string v0, "1"

    goto :goto_0

    .line 558
    .restart local v1    # "isLocalBadged":Z
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceForLocal:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    .line 562
    .end local v1    # "isLocalBadged":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isKeyguardNotificationDetailsEnabled(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v1, 0x1

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 449
    const-string v0, ""

    .line 451
    .local v0, "details":Ljava/lang/String;
    if-gtz p2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceDefault:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_0
    const-string v2, "NotificationOpsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKeyguardNotificationDetailsEnabled(), details = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    :cond_0
    :goto_1
    return v1

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceDefault:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_2
    const-string v2, "1"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isKeyguardNotificationEnabled(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    const-string v0, ""

    .line 414
    .local v0, "details":Ljava/lang/String;
    if-gtz p2, :cond_1

    .line 415
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceDefault:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isSystemApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->KEYGUARD_NOTIFICATION_APP_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 428
    :cond_0
    :goto_1
    return v1

    .line 418
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceDefault:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 425
    goto :goto_1

    .line 428
    :cond_3
    const-string v3, "1"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public isNotificationBlockable(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChangeBack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 309
    :try_start_0
    const-string v4, "vivo.statusbar.fake.notification"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "vivo.statusbar.fake.ongoing"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v2

    .line 313
    :cond_1
    const-string v4, "com.android.bbkmusic"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq p2, v3, :cond_0

    const/16 v4, 0x2711

    if-eq p2, v4, :cond_0

    :cond_2
    const-string v4, "com.android.VideoPlayer"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq p2, v3, :cond_0

    :cond_3
    const-string v4, "com.mediatek.FMRadio"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.quicinc.fmradio"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 318
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2200

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 320
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mChangeableList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mChangeableList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    move v2, v3

    .line 322
    goto :goto_0

    .line 325
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NotificationOpsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error at isNotificationBlockable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isNotificationHighPriority(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "instanceId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 701
    const/4 v1, 0x0

    .line 703
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 704
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 705
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, p1, v5, p3}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getPackagePriorityForDualInstance(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 705
    goto :goto_0

    .line 708
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mNotificationService:Landroid/app/INotificationManager;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4, p1, v5}, Landroid/app/INotificationManager;->getPackagePriority(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v6, :cond_0

    move v2, v3

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationOpsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling NoMan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 712
    goto :goto_0
.end method

.method public isSoftLockChanged()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSoftLockChanged:Z

    return v0
.end method

.method public isTopPreViewEnabled(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v4, 0x1

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 637
    const-string v0, ""

    .line 639
    .local v0, "details":Ljava/lang/String;
    if-gtz p2, :cond_0

    .line 640
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceDefault:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    :goto_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 652
    :goto_1
    return-object v1

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSharePreferenceDefault:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 648
    :cond_1
    const-string v1, "0"

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 652
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method public notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 743
    const-string v0, "com.android.mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const-string p1, "com.android.mms.service"

    .line 746
    :cond_0
    return-object p1
.end method

.method public notificationPkgNameChangeBack(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 750
    const-string v0, "com.android.mms.service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const-string p1, "com.android.mms"

    .line 753
    :cond_0
    return-object p1
.end method

.method public onNotificationEnabledChange(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 660
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChangeBack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->areNotificationsEnabledForPackage(Ljava/lang/String;II)Z

    move-result v1

    .line 662
    .local v1, "notiEnabled":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isDesktopAppIconBadgeEnableForLocal(Ljava/lang/String;I)Z

    move-result v0

    .line 663
    .local v0, "localBadgeEnabled":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setDesktopAppIconBadgeEnabled(Ljava/lang/String;IZZ)V

    .line 664
    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->onNotificationEnabledChange(Ljava/lang/String;IZ)V

    .line 665
    return-void
.end method

.method public registerObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;)V
    .locals 4
    .param p1, "observer"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 255
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 256
    const-string v1, "NotificationOpsManager"

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

    .line 258
    :cond_0
    return-void
.end method

.method public setDesktopAppIconBadgeEnabled(Ljava/lang/String;IZZ)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "badged"    # Z
    .param p4, "localBadged"    # Z

    .prologue
    .line 566
    const-string v0, ""

    .line 567
    .local v0, "instanceFlag":Ljava/lang/String;
    if-gtz p2, :cond_0

    .line 568
    const-string v0, ""

    .line 574
    :goto_0
    const-string v2, "com.android.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorForLauncher:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.dialer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 576
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorForLocal:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.dialer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 581
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorForLauncher:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 582
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorForLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 583
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->onDesktopAppIconBadgeEnabledChange(Ljava/lang/String;IZ)V

    .line 585
    new-instance v1, Landroid/content/Intent;

    const-string v2, "vivo.action.launcher.app.icon.badge"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 587
    const-string v2, "pkg"

    const-string v3, "com.android.dialer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 592
    return-void

    .line 571
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v0, "1"

    goto :goto_0

    .line 578
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorForLauncher:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 579
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorForLocal:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 589
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public setKeyguardNotificationDetailsEnabled(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationEnabled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isTopPreViewEnabled(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "newDetails":Ljava/lang/String;
    if-gtz p2, :cond_3

    .line 471
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 476
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->onKeyguardNotificationDetailsEnabledChange(Ljava/lang/String;IZ)V

    .line 478
    return-void

    .line 467
    .end local v0    # "newDetails":Ljava/lang/String;
    :cond_0
    const-string v1, "0"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    goto :goto_1

    :cond_2
    const-string v1, "0"

    goto :goto_2

    .line 474
    .restart local v0    # "newDetails":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method

.method public setKeyguardNotificationEnabled(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "actualPkgName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationDetailsEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isTopPreViewEnabled(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "newDetails":Ljava/lang/String;
    if-gtz p2, :cond_3

    .line 438
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 444
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->onKeyguardNotificationEnabledChange(Ljava/lang/String;IZ)V

    .line 445
    return-void

    .line 434
    .end local v1    # "newDetails":Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    goto :goto_0

    :cond_1
    const-string v2, "0"

    goto :goto_1

    :cond_2
    const-string v2, "0"

    goto :goto_2

    .line 441
    .restart local v1    # "newDetails":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method

.method public setNotificationEnabled(Ljava/lang/String;IIZ)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "instanceId"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "actualPkgName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 270
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p2, p4, p3}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->setNotificationsEnabledForPackageForDualInstance(Landroid/content/Context;Ljava/lang/String;IZI)V

    .line 276
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->onNotificationEnabledChange(Ljava/lang/String;IZ)V

    .line 280
    :goto_1
    return-void

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mNotificationService:Landroid/app/INotificationManager;

    invoke-interface {v2, v0, p2, p4}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotificationOpsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to block notification of pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setNotificationEnabled(Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "instanceId"    # I

    .prologue
    const/4 v4, 0x0

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "actualPkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 288
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 289
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v0, v6, p2, p3}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->setNotificationsEnabledForPackageForDualInstance(Landroid/content/Context;Ljava/lang/String;IZI)V

    .line 295
    :goto_0
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->onNotificationEnabledChange(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isDesktopAppIconBadgeEnableForLocal(Ljava/lang/String;I)Z

    move-result v3

    .line 302
    .local v3, "isDesktopEnableLocal":Z
    if-eqz p2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p3, v4, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setDesktopAppIconBadgeEnabled(Ljava/lang/String;IZZ)V

    .line 304
    return-void

    .line 293
    .end local v3    # "isDesktopEnableLocal":Z
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mNotificationService:Landroid/app/INotificationManager;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v5, v0, v6, p2}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "NotificationOpsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to block notification of pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setNotificationHighPriority(Ljava/lang/String;IZI)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "highPriority"    # Z
    .param p4, "instanceId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 718
    const/4 v1, 0x0

    .line 720
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 721
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 722
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mContext:Landroid/content/Context;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v4, p1, v5, p4, v3}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->setPackagePriorityForDualInstance(Landroid/content/Context;Ljava/lang/String;III)V

    .line 729
    :goto_1
    const/4 v2, 0x1

    .line 732
    :goto_2
    return v2

    :cond_0
    move v3, v2

    .line 722
    goto :goto_0

    .line 726
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mNotificationService:Landroid/app/INotificationManager;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p3, :cond_2

    :goto_3
    invoke-interface {v4, p1, v5, v3}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NotificationOpsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling NoMan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v3, v2

    .line 726
    goto :goto_3
.end method

.method public setNotificationTipStyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    const-string v1, "notification_top_preview_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 623
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mEditorDefault:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 624
    return-void
.end method

.method public setSoftLockChanged(Z)V
    .locals 0
    .param p1, "mSoftLockChanged"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mSoftLockChanged:Z

    .line 251
    return-void
.end method

.method public unregisterObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method
