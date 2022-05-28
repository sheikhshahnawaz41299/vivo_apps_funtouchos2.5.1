.class Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;
.super Ljava/lang/Object;
.source "WifiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 28
    const-string v1, "WifiHelper"

    const-string v2, "start scan thread"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Ljava/lang/Thread;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    const-string v1, "WifiHelper"

    const-string v3, "mEnableScreen is false , wait..."

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 39
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_2
    const-string v1, "WifiHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the wifi state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    .line 47
    const-string v1, "WifiHelper"

    const-string v2, "do wifi scan"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_0

    .line 36
    :cond_1
    :try_start_2
    const-string v1, "WifiHelper"

    const-string v3, "mEnableScreen is true , wait 5s..."

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Ljava/lang/Thread;

    move-result-object v1

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 42
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    throw v1

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 51
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->access$502(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;Z)Z

    goto/16 :goto_0
.end method
