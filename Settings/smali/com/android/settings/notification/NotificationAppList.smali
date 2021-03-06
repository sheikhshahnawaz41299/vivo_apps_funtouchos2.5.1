.class public Lcom/android/settings/notification/NotificationAppList;
.super Lcom/android/settings/PinnedHeaderListFragment;
.source "NotificationAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationAppList$Backend;,
        Lcom/android/settings/notification/NotificationAppList$AppRow;,
        Lcom/android/settings/notification/NotificationAppList$Row;,
        Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;,
        Lcom/android/settings/notification/NotificationAppList$ViewHolder;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static final EMPTY_SUBTITLE:Ljava/lang/String; = ""

.field private static final SECTION_AFTER_Z:Ljava/lang/String; = "**"

.field private static final SECTION_BEFORE_A:Ljava/lang/String; = "*"

.field private static final TAG:Ljava/lang/String; = "NotificationAppList"

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/notification/NotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

.field private mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/NotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;

.field private mSystemSignature:[Landroid/content/pm/Signature;

.field private mUM:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "NotificationAppList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 367
    new-instance v0, Lcom/android/settings/notification/NotificationAppList$1;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppList$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/PinnedHeaderListFragment;-><init>()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Lcom/android/settings/notification/NotificationAppList$Backend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

    .line 433
    new-instance v0, Lcom/android/settings/notification/NotificationAppList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationAppList$2;-><init>(Lcom/android/settings/notification/NotificationAppList;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 533
    new-instance v0, Lcom/android/settings/notification/NotificationAppList$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationAppList$3;-><init>(Lcom/android/settings/notification/NotificationAppList;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 540
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationAppList;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/NotificationAppList;)Lcom/android/settings/notification/NotificationAppList$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/settings/notification/NotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationAppList;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationAppList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/NotificationAppList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/NotificationAppList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppList;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/NotificationAppList;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/pm/LauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppList;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationAppList$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/NotificationAppList$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "NotificationAppList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 413
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 414
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 415
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/NotificationAppList$AppRow;

    .line 416
    .local v4, "row":Lcom/android/settings/notification/NotificationAppList$AppRow;
    if-nez v4, :cond_2

    .line 417
    const-string v5, "NotificationAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 410
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings/notification/NotificationAppList$AppRow;
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 422
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/android/settings/notification/NotificationAppList$AppRow;
    :cond_2
    iget-object v5, v4, Lcom/android/settings/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 423
    const-string v5, "NotificationAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 428
    :cond_3
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    .line 431
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings/notification/NotificationAppList$AppRow;
    :cond_4
    return-void
.end method

.method public static collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationAppList$AppRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/NotificationAppList$AppRow;>;"
    invoke-static {p0}, Lcom/android/settings/notification/NotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 405
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/android/settings/notification/NotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 406
    return-void
.end method

.method private getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "*"

    .line 191
    :goto_0
    return-object v1

    .line 188
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 189
    .local v0, "c":C
    const/16 v1, 0x41

    if-ge v0, v1, :cond_2

    const-string v1, "*"

    goto :goto_0

    .line 190
    :cond_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    const-string v1, "**"

    goto :goto_0

    .line 191
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationAppList$Backend;)Lcom/android/settings/notification/NotificationAppList$AppRow;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationAppList$Backend;

    .prologue
    .line 378
    new-instance v0, Lcom/android/settings/notification/NotificationAppList$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppList$AppRow;-><init>()V

    .line 379
    .local v0, "row":Lcom/android/settings/notification/NotificationAppList$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    .line 380
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->uid:I

    .line 382
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 388
    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationAppList$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->banned:Z

    .line 389
    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationAppList$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->priority:Z

    .line 390
    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationAppList$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->sensitive:Z

    .line 391
    return-object v0

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    sget-boolean v1, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NotificationAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    sget-object v1, Lcom/android/settings/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 401
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 498
    sget-boolean v6, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "NotificationAppList"

    const-string v7, "Refreshing apps..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->clear()V

    .line 500
    iget-object v7, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v7

    .line 501
    const/4 v5, 0x0

    .line 502
    .local v5, "section":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 503
    monitor-exit v7

    .line 531
    :cond_1
    :goto_0
    return-void

    .line 505
    :cond_2
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 506
    .local v0, "N":I
    const/4 v1, 0x1

    .line 507
    .local v1, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 508
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v2, :cond_3

    .line 509
    monitor-exit v7

    goto :goto_0

    .line 524
    .end local v0    # "N":I
    .end local v1    # "first":Z
    .end local v2    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 512
    .restart local v0    # "N":I
    .restart local v1    # "first":Z
    .restart local v2    # "i":I
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/NotificationAppList$AppRow;

    .line 513
    .local v4, "row":Lcom/android/settings/notification/NotificationAppList$AppRow;
    iget-object v6, v4, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 514
    iget-object v5, v4, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    .line 515
    new-instance v3, Lcom/android/settings/notification/NotificationAppList$Row;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/settings/notification/NotificationAppList$Row;-><init>(Lcom/android/settings/notification/NotificationAppList$1;)V

    .line 516
    .local v3, "r":Lcom/android/settings/notification/NotificationAppList$Row;
    iput-object v5, v3, Lcom/android/settings/notification/NotificationAppList$Row;->section:Ljava/lang/String;

    .line 517
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v6, v3}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 518
    const/4 v1, 0x1

    .line 520
    .end local v3    # "r":Lcom/android/settings/notification/NotificationAppList$Row;
    :cond_4
    iput-boolean v1, v4, Lcom/android/settings/notification/NotificationAppList$AppRow;->first:Z

    .line 521
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 522
    const/4 v1, 0x0

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 524
    .end local v4    # "row":Lcom/android/settings/notification/NotificationAppList$AppRow;
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    if-eqz v6, :cond_7

    .line 526
    sget-boolean v6, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "NotificationAppList"

    const-string v7, "Restoring listView state"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 528
    iput-object v8, p0, Lcom/android/settings/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    .line 530
    :cond_7
    sget-boolean v6, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "NotificationAppList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Refreshed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " displayed items"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private repositionScrollbar()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollBarSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 198
    .local v2, "sbWidthPx":I
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 199
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 200
    .local v0, "eat":I
    if-gtz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    sget-boolean v3, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "NotificationAppList"

    const-string v4, "Eating %dpx into %dpx padding for %dpx scroll, ld=%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutDirection()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppList;->repositionScrollbar()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    new-instance v0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;-><init>(Lcom/android/settings/notification/NotificationAppList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mUM:Landroid/os/UserManager;

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b06f7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const v0, 0x7f040085

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onDestroyView()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    .line 152
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 163
    .local v1, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 170
    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 172
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onPause()V

    .line 144
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onResume()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppList;->loadAppsList()V

    .line 158
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/settings/PinnedHeaderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mUM:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserSpinnerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAppList;->setPinnedHeaderView(Landroid/view/View;)V

    .line 132
    :cond_0
    return-void
.end method

.method public setBackend(Lcom/android/settings/notification/NotificationAppList$Backend;)V
    .locals 0
    .param p1, "backend"    # Lcom/android/settings/notification/NotificationAppList$Backend;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppList;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

    .line 180
    return-void
.end method
