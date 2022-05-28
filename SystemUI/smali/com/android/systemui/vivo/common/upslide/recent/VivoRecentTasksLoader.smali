.class public Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;
.super Ljava/lang/Object;
.source "VivoRecentTasksLoader.java"


# static fields
.field private static final DISPLAY_TASKS:I = 0x14

.field private static final DISPLAY_TASKS_PER_SCREEN:I = 0x4

.field public static final ENTER_VISIT_MODE:I = 0x10

.field public static final LOAD_TYPE_ALL:I = 0x19

.field public static final LOAD_TYPE_LATEST_ONE:I = 0x1

.field public static final LOAD_TYPE_LATEST_TWO:I = 0x2

.field public static final MAX_TASKS:I = 0x19

.field private static final ONE_SCREEN_TASKS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VivoRecentTasksLoader"

.field private static mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

.field private static mTaskPersistentIdList:Ljava/util/ArrayList;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mTaskLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mTaskPersistentIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mLock:Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mContext:Landroid/content/Context;

    .line 59
    sput-object p2, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .line 60
    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->getRecentTasks(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->isCurrentHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mTaskPersistentIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getRecentTasks(Landroid/content/Context;I)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numLatestTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v13, 0x800000

    const/4 v9, 0x0

    .line 253
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 254
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    const/4 v9, 0x0

    .line 312
    :goto_0
    return-object v9

    .line 257
    :cond_0
    const/16 v5, 0x32

    .line 258
    .local v5, "minNumTasksToQuery":I
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 259
    .local v6, "numTasksToQuery":I
    const/16 v10, 0xf

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {v0, v6, v10, v11}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v8

    .line 266
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v8, :cond_1

    .line 267
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 270
    :cond_1
    sget-object v10, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mTaskPersistentIdList:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    .line 271
    sget-object v10, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mTaskPersistentIdList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 274
    :cond_2
    const/4 v3, 0x1

    .line 275
    .local v3, "isFirstValidTask":Z
    const/4 v1, 0x0

    .line 276
    .local v1, "i":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 277
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 278
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 286
    .local v7, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v10

    and-int/2addr v10, v13

    if-ne v10, v13, :cond_4

    const/4 v2, 0x1

    .line 288
    .local v2, "isExcluded":Z
    :goto_2
    const-string v10, "VivoRecentTasksLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getRecentTasks: pkg = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", t.persistentId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", t.id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", t.userId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isExcluded = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isFirstValidTask = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    .line 298
    if-nez v2, :cond_3

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->isExcludeRecentsApp(Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 306
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .end local v2    # "isExcluded":Z
    :cond_4
    move v2, v9

    .line 286
    goto :goto_2

    .line 309
    .restart local v2    # "isExcluded":Z
    :cond_5
    sget-object v10, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mTaskPersistentIdList:Ljava/util/ArrayList;

    iget v11, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    const/4 v3, 0x0

    .line 311
    goto/16 :goto_1

    .line 312
    .end local v2    # "isExcluded":Z
    .end local v7    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-interface {v8, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private static isCurrentHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "homeInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, 0x0

    .line 193
    if-nez p2, :cond_0

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 195
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 198
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static refreshVivoRecentItemInfo(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;IILandroid/content/Intent;Landroid/content/ComponentName;)V
    .locals 3
    .param p0, "item"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    .param p1, "taskId"    # I
    .param p2, "persistentTaskId"    # I
    .param p3, "baseIntent"    # Landroid/content/Intent;
    .param p4, "origActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 181
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->taskId:I

    .line 182
    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->persistentTaskId:I

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 185
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->intent:Landroid/content/Intent;

    .line 190
    return-void
.end method


# virtual methods
.method public cancelLoading()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 177
    :cond_0
    return-void
.end method

.method public declared-synchronized loadRecentInBackground(I)V
    .locals 3
    .param p1, "loadType"    # I

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    const-string v0, "VivoRecentTasksLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadRecentInBackground, loadType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;I)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadRecentIcon(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V
    .locals 8
    .param p1, "item"    # Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .prologue
    const/4 v7, 0x0

    .line 232
    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 238
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 240
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v5, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    :goto_1
    iget-object v5, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 245
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 246
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v3, v4}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItemBuilder;->getFullResIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 247
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iput-object v2, p1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 241
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public removeRecentTasks()V
    .locals 3

    .prologue
    .line 204
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$2;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    return-void
.end method
