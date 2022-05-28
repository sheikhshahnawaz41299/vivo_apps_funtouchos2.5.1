.class public Lcom/android/systemui/vivo/common/utils/RecentClearUtils;
.super Ljava/lang/Object;
.source "RecentClearUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentClearUtils"

.field public static mAllRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->mAllRemoved:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->getAllRecentTasks(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getAllRecentTasks(Landroid/content/Context;I)Ljava/util/List;
    .locals 6
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
    .line 94
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 95
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 110
    :goto_0
    return-object v4

    .line 98
    :cond_0
    const/16 v1, 0xa

    .line 99
    .local v1, "minNumTasksToQuery":I
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 100
    .local v2, "numTasksToQuery":I
    const/16 v4, 0xf

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v3

    .line 107
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v3, :cond_1

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 110
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method public static isAlertClock(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    const-string v1, "com.android.BBKClock"

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRemoved()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->mAllRemoved:Z

    return v0
.end method

.method public static onBootCompelted(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whiteListHelper"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 22
    const-string v0, "RecentClearUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBootCompelted: mAllRemoved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->mAllRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-boolean v0, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->mAllRemoved:Z

    if-eqz v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->removeRecentTasks(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V

    goto :goto_0
.end method

.method public static onUpslideIniting(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whiteListHelper"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 29
    const-string v1, "0"

    const-string v2, "sys.boot_completed"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 30
    .local v0, "booting":Z
    const-string v1, "RecentClearUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpslideIniting: mAllRemoved = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->mAllRemoved:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",booting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    sget-boolean v1, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->mAllRemoved:Z

    if-nez v1, :cond_0

    .line 35
    invoke-static {p0, p1}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->removeRecentTasks(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V

    goto :goto_0
.end method

.method public static removeRecentTasks(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whiteListHelper"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 43
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->mAllRemoved:Z

    .line 44
    move-object v0, p0

    .line 45
    .local v0, "tmpContext":Landroid/content/Context;
    new-instance v2, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;

    invoke-direct {v2, v0, p1}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method
