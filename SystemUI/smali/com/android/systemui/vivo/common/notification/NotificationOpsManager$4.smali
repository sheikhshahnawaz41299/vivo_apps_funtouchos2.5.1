.class Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$4;
.super Landroid/os/FileObserver;
.source "NotificationOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->observeChangeableListFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 371
    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 372
    const-string v0, "NotificationOpsManager"

    const-string v1, "observeChangeableListServer"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {}, Lcom/android/systemui/vivo/common/notification/FileParser;->readNotificationChangeableList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$702(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 376
    :cond_0
    return-void
.end method
