.class Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$6;
.super Ljava/lang/Thread;
.source "NotificationOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->queryLockedAppListBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$6;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$6;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$1000(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$6;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$1100(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V

    .line 809
    monitor-exit v1

    .line 810
    return-void

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
