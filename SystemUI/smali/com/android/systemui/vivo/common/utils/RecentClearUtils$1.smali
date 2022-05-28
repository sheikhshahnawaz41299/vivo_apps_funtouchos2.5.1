.class final Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;
.super Landroid/os/AsyncTask;
.source "RecentClearUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->removeRecentTasks(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$tmpContext:Landroid/content/Context;

.field final synthetic val$whiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;->val$tmpContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;->val$whiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x800000

    .line 50
    iget-object v6, p0, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;->val$tmpContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 52
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;->val$tmpContext:Landroid/content/Context;

    const/16 v7, 0x32

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->access$000(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 54
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 55
    .local v3, "numTasks":I
    if-nez v3, :cond_1

    .line 71
    :cond_0
    return-object v9

    .line 58
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 60
    .local v5, "rt":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_3

    const/4 v2, 0x1

    .line 62
    .local v2, "isExcluded":Z
    :goto_1
    if-eqz v2, :cond_4

    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->isAlertClock(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 63
    const-string v6, "RecentClearUtils"

    const-string v7, "AlertClock not remove task"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    .end local v2    # "isExcluded":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 67
    .restart local v2    # "isExcluded":Z
    :cond_4
    if-eqz v0, :cond_2

    .line 68
    iget v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;->val$whiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/RecentClearUtils$1;->val$whiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->fetchListsManually()V

    .line 80
    :cond_0
    return-void
.end method
