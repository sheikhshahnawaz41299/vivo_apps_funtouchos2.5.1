.class Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager$1;
.super Ljava/lang/Object;
.source "NotificationPartitionManager.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFunctionConfigChange()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->access$100(Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isCalendarPartitionEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->access$002(Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;Z)Z

    .line 99
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->updatePartitionTitles()V

    .line 100
    return-void
.end method
