.class Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;
.super Landroid/os/AsyncTask;
.source "VivoRecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->loadRecentInBackground(I)V
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

.field final synthetic val$loadType:I


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;I)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->val$loadType:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 22
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 80
    const-string v1, "VivoRecentTasksLoader"

    const-string v2, "doInBackground---start"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v17

    .line 82
    .local v17, "origPri":I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 85
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 87
    .local v9, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->val$loadType:I

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$200(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v20

    .line 89
    .local v20, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v16

    .line 90
    .local v16, "numTasks":I
    if-nez v16, :cond_0

    .line 91
    const-string v1, "VivoRecentTasksLoader"

    const-string v2, "there is no recent task."

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    .line 159
    :goto_0
    return-object v1

    .line 94
    :cond_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v21, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;>;"
    const/4 v10, 0x1

    .line 97
    .local v10, "firstScreen":Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 99
    .local v11, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    const/16 v1, 0x19

    if-ge v13, v1, :cond_1

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v21, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 157
    :cond_2
    const-string v1, "VivoRecentTasksLoader"

    const-string v2, "doInBackground---end"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static/range {v17 .. v17}, Landroid/os/Process;->setThreadPriority(I)V

    .line 159
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    :cond_3
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 105
    .local v19, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    const/16 v1, 0x14

    if-lt v13, v1, :cond_5

    .line 106
    move-object/from16 v0, v19

    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v9, v1}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 99
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 110
    :cond_5
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 111
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    .line 112
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$300(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 121
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 125
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$000()Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    move-result-object v1

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->isAppHidedInVisitMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    const-string v1, "VivoRecentTasksLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load recents doInBackground, hide the pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 131
    :cond_7
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getRecentInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v7

    .line 133
    .local v7, "instanceId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItemBuilder;->build(Landroid/content/Context;IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;II)Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    move-result-object v15

    .line 136
    .local v15, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    if-eqz v15, :cond_9

    .line 137
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$000()Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    move-result-object v1

    iget-object v2, v15, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->isPkgProtected(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->setProtected(Z)V

    .line 138
    const-string v1, "VivoRecentTasksLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground, pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    if-eqz v10, :cond_8

    const/4 v1, 0x3

    if-ne v13, v1, :cond_8

    .line 146
    const/4 v10, 0x0

    .line 147
    const-string v1, "TAG"

    const-string v2, "first public progress"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v21, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 149
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .restart local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;>;"
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 140
    :cond_9
    const-string v1, "VivoRecentTasksLoader"

    const-string v2, "packageName is null"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 165
    const-string v0, "VivoRecentTasksLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute RecentTask Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$400()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$000()Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$400()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->checkRecentsValidity(Ljava/util/ArrayList;)V

    .line 167
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "values":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;>;"
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 73
    .local v0, "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;>;"
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->access$000()Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader$1;->val$loadType:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onTasksLoaded(Ljava/util/ArrayList;I)V

    .line 75
    .end local v0    # "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;>;"
    :cond_0
    return-void
.end method
