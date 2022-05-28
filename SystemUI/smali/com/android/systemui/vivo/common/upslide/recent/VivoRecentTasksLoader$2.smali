.class Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$2;
.super Landroid/os/AsyncTask;
.source "VivoRecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->removeRecentTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 209
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 211
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x32

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$200(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 213
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 214
    .local v3, "numTasks":I
    if-nez v3, :cond_1

    .line 226
    :cond_0
    return-object v8

    .line 217
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

    .line 218
    .local v5, "rt":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 219
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 220
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 222
    :cond_3
    if-eqz v0, :cond_2

    .line 223
    iget v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_0
.end method
