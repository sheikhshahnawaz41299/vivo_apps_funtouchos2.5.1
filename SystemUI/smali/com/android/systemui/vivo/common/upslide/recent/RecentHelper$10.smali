.class Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;
.super Ljava/lang/Thread;
.source "RecentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->updateRecentTaskIdList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->val$tasks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x800000

    .line 1221
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1222
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$1400(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8

    .line 1223
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$1400(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1224
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->val$tasks:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1228
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->val$tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 1229
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->val$tasks:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_0

    const/4 v6, 0x1

    .line 1231
    .local v6, "isExcluded":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->val$tasks:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getRecentInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v5

    .line 1232
    .local v5, "instanceId":I
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->val$tasks:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->val$tasks:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->val$tasks:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->val$tasks:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;-><init>(IILjava/lang/String;IIZ)V

    .line 1234
    .local v0, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$10;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$1400(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1229
    .end local v0    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    .end local v5    # "instanceId":I
    .end local v6    # "isExcluded":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 1237
    .end local v7    # "i":I
    :cond_1
    monitor-exit v8

    .line 1238
    return-void

    .line 1237
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
