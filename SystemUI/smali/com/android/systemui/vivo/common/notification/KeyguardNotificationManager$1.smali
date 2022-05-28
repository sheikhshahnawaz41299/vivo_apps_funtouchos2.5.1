.class Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;
.super Ljava/lang/Object;
.source "KeyguardNotificationManager.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationAdd(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 130
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->displayFromHeadsUp:Z

    if-nez v3, :cond_3

    move v0, v1

    .line 132
    .local v0, "show":Z
    :goto_0
    const-string v3, "KeyguardNotificationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotificationAdd, show = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", entry.displayFromHeadsUp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->displayFromHeadsUp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mKeyguardNotificationCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isKeyguardShowingWithoutShade() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getState()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 144
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    move v3, v2

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 147
    :cond_0
    if-eqz v0, :cond_2

    .line 148
    sget v3, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    if-nez v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v3, v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$000(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V

    .line 150
    :cond_1
    sget v2, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    .line 152
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iput v1, v2, Landroid/app/Notification;->isKeyguardNotification:I

    .line 155
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$100(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$200(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V

    .line 161
    :cond_2
    :goto_2
    return-void

    .end local v0    # "show":Z
    :cond_3
    move v0, v2

    .line 130
    goto/16 :goto_0

    .line 144
    .restart local v0    # "show":Z
    :cond_4
    const/16 v3, 0x8

    goto :goto_1

    .line 157
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$300(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$400(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V

    goto :goto_2
.end method

.method public onNotificationRemove(Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-virtual {v3, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->isKeyguardNotification:I

    if-ne v1, v3, :cond_3

    move v0, v1

    .line 106
    .local v0, "shown":Z
    :goto_0
    const-string v3, "KeyguardNotificationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotificationRemove, shown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mKeyguardNotificationCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz v0, :cond_2

    .line 111
    sget v3, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    if-ne v3, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$500(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V

    .line 113
    :cond_0
    sget v1, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    .line 114
    sget v1, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    if-gez v1, :cond_1

    .line 115
    sput v2, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v1, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$100(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$200(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V

    .line 123
    :cond_2
    :goto_1
    return-void

    .end local v0    # "shown":Z
    :cond_3
    move v0, v2

    .line 105
    goto :goto_0

    .line 119
    .restart local v0    # "shown":Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v1, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$300(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$400(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V

    goto :goto_1
.end method

.method public onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 68
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 69
    .local v0, "shown":Z
    const-string v1, "KeyguardNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationUpdate, shown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mKeyguardNotificationCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isKeyguardNotification = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->isKeyguardNotification:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getState()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 80
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 83
    :cond_0
    if-eqz v0, :cond_3

    .line 85
    sget v1, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    if-nez v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$000(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V

    .line 88
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->isKeyguardNotification:I

    if-nez v1, :cond_2

    .line 89
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput v5, v1, Landroid/app/Notification;->isKeyguardNotification:I

    .line 90
    sget v1, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$100(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v1, v5}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$200(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V

    .line 100
    :cond_3
    :goto_1
    return-void

    .line 80
    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$300(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-static {v1, v5}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->access$400(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V

    goto :goto_1
.end method
