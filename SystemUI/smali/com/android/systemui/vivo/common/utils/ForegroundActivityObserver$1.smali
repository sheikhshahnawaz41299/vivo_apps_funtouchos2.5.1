.class Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;
.super Landroid/app/IProcessObserver$Stub;
.source "ForegroundActivityObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;->this$0:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 60
    .local v2, "now":J
    if-nez p3, :cond_1

    sget-object v5, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->MAIN_ACTIVTY_START_CHANGED_APP_LIST:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;->this$0:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->access$000(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 61
    iget-object v5, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;->this$0:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->access$100(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;)J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 62
    const-string v5, "StatusBar.ForegroundActivityObserver"

    const-string v6, "less than 1000ms,no need to reload recent"

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v5, "StatusBar.ForegroundActivityObserver"

    const-string v6, "more than 1000ms,need to reload recent"

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;->this$0:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    invoke-static {v5, v2, v3}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->access$102(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;J)J

    .line 71
    iget-object v5, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;->this$0:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    invoke-static {v5, p1}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->access$200(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "packageName":Ljava/lang/String;
    const-string v5, "StatusBar.ForegroundActivityObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change from [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;->this$0:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->access$000(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v5, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;->this$0:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    iget-object v5, v5, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;

    .line 74
    .local v0, "callback":Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;->this$0:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->access$000(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;->onForegroundActivitiesChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 68
    .end local v0    # "callback":Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v5, "StatusBar.ForegroundActivityObserver"

    const-string v6, "ForegroundActivitiesChanged, need to reload recent"

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;->this$0:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    invoke-static {v5, v4}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->access$002(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 82
    return-void
.end method
