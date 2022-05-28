.class Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;
.super Ljava/lang/Object;
.source "NotificationBlockActivity.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationAdd(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 539
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 540
    .local v0, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "NotificationBlockActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNotificationChangeObserver.onNotificationAdd: pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$800(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isNotificationBlockable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$1600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Landroid/service/notification/StatusBarNotification;)V

    .line 546
    :cond_0
    return-void
.end method

.method public onNotificationRemove(Landroid/service/notification/StatusBarNotification;)V
    .locals 7
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v6, 0x0

    .line 562
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    .line 564
    .local v0, "instanceId":I
    const-string v3, "NotificationBlockActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNotificationChangeObserver.onNotificationRemove: pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$800(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isNotificationBlockable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 576
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$800(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->areNotificationsEnabledForPackage(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v3, p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$1800(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 572
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v3, v1, v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$1900(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;I)I

    move-result v2

    .line 573
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    invoke-static {v3, v6}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$402(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;Z)Z

    .line 574
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v3, v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$2000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;I)V

    goto :goto_0
.end method

.method public onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 551
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 552
    .local v0, "oldNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "NotificationBlockActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNotificationChangeObserver.onNotificationUpdate: pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$800(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isNotificationBlockable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v2, v0, p2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$1700(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    .line 558
    :cond_0
    return-void
.end method
