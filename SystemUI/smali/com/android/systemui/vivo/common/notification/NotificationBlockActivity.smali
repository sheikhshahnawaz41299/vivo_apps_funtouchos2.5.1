.class public Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
.super Landroid/app/Activity;
.source "NotificationBlockActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;,
        Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;,
        Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    }
.end annotation


# static fields
.field private static final MSG_INIT_DATA:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "NotificationBlockActivity"


# instance fields
.field private mApplicationUtils:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;

.field private mContentInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImageUtil:Lcom/android/systemui/vivo/common/utils/ImageUtil;

.field private mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

.field private mNotificationChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

.field private mNotificationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationList:Landroid/widget/ListView;

.field private mNotificationMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

.field private mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

.field private mNotificationUpdateManager:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationInfos:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationMaps:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    .line 515
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$3;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mHandler:Landroid/os/Handler;

    .line 535
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$4;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    .line 597
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$5;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->initNotifications()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->initContentInfos()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->addNotification(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->getTitlePosition(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->removeNotificationsAfterBlock(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mApplicationUtils:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
    .param p1, "x1"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->setNotificationEnabled(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;ZI)V

    return-void
.end method

.method private addNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 14
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "pkg":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v12

    .line 352
    .local v12, "instanceId":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v13, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 354
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .line 355
    .local v11, "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v1

    if-ne v1, v12, :cond_2

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 356
    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$1200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 357
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 360
    add-int/lit8 v10, v10, -0x1

    .line 353
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 361
    :cond_2
    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v1

    if-ne v1, v12, :cond_1

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 363
    add-int/lit8 v10, v10, -0x1

    .line 367
    .end local v11    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_3
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;ILcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V

    .line 369
    .local v0, "notificationInfo":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v3, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;ILcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V

    .line 371
    .local v3, "notificationInfoTitle":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$302(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;Z)Z

    .line 372
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    const/4 v10, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_4

    .line 374
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 376
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    if-eqz v1, :cond_5

    .line 377
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->notifyDataSetChanged()V

    .line 379
    :cond_5
    return-void
.end method

.method private getNotificationCount(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 474
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .line 475
    .local v2, "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 476
    add-int/lit8 v0, v0, 0x1

    .line 478
    :cond_0
    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v3

    if-ne v3, p2, :cond_2

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 482
    .end local v2    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_1
    return v0

    .line 473
    .restart local v2    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getNotificationPosition(Landroid/service/notification/StatusBarNotification;)I
    .locals 6
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 498
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, -0x1

    .line 500
    .local v3, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 501
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .line 502
    .local v1, "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$1200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 503
    move v3, v0

    .line 507
    .end local v1    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_0
    return v3

    .line 500
    .restart local v1    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTitlePosition(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 488
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .line 489
    .local v1, "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    move v2, v0

    .line 494
    .end local v1    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_0
    return v2

    .line 487
    .restart local v1    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initContentInfos()V
    .locals 8

    .prologue
    .line 321
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 323
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .line 325
    .local v5, "notificationInfoTitle":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationMaps:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 327
    .local v4, "notificationInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;>;"
    if-eqz v4, :cond_0

    .line 328
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .line 329
    .local v2, "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "notificationInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;>;"
    .end local v5    # "notificationInfoTitle":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_1
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    const/16 v1, 0x3e9

    .line 511
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 513
    return-void
.end method

.method private initNotifications()V
    .locals 21

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationMaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v18

    .line 274
    .local v18, "notificationData":Lcom/android/systemui/statusbar/NotificationData;
    if-eqz v18, :cond_2

    .line 275
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v15

    .line 276
    .local v15, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 277
    .local v13, "N1":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_2

    .line 278
    sub-int v2, v13, v17

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    .line 279
    .local v20, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 281
    .local v4, "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isNotificationBlockable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 285
    :cond_0
    new-instance v1, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;ILcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V

    .line 286
    .local v1, "notificationInfo":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationMaps:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationMaps:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v5, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;ILcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V

    .line 289
    .local v5, "notificationInfoTitle":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    const/4 v2, 0x1

    invoke-static {v5, v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$302(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;Z)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v5    # "notificationInfoTitle":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationMaps:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 296
    .end local v1    # "notificationInfo":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v13    # "N1":I
    .end local v15    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v17    # "i":I
    .end local v20    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getOngoingData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v19

    .line 297
    .local v19, "ongoingData":Lcom/android/systemui/statusbar/NotificationData;
    if-eqz v19, :cond_5

    .line 298
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v16

    .line 299
    .local v16, "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 300
    .local v14, "N2":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v14, :cond_5

    .line 301
    sub-int v2, v14, v17

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    .line 302
    .restart local v20    # "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 303
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 304
    .restart local v4    # "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isNotificationBlockable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 300
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 308
    :cond_3
    new-instance v1, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v10, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v11

    const/4 v12, 0x0

    move-object v6, v1

    move-object/from16 v7, p0

    move-object v8, v3

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;ILcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V

    .line 309
    .restart local v1    # "notificationInfo":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationMaps:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationMaps:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v5, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;ILcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V

    .line 312
    .restart local v5    # "notificationInfoTitle":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    const/4 v2, 0x1

    invoke-static {v5, v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$302(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;Z)Z

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationInfos:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v5    # "notificationInfoTitle":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationMaps:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 318
    .end local v1    # "notificationInfo":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v14    # "N2":I
    .end local v16    # "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v17    # "i":I
    .end local v20    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_5
    return-void
.end method

.method private removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    .line 423
    .local v0, "instanceId":I
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->getNotificationPosition(Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    .line 427
    .local v2, "position":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 430
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 431
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->getNotificationCount(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 432
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->getTitlePosition(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 434
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    if-eqz v3, :cond_0

    .line 435
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private removeNotificationsAfterBlock(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 440
    if-gtz p1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 445
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .line 446
    .local v1, "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    if-eqz v1, :cond_4

    .line 447
    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 453
    .end local v1    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    if-eqz v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 450
    .restart local v1    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 444
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private setNotificationEnabled(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;ZI)V
    .locals 4
    .param p1, "info"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    .param p2, "isChecked"    # Z
    .param p3, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 338
    const-string v0, "NotificationBlockActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotificationEnabled: pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-nez p2, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setNotificationEnabled(Ljava/lang/String;ZI)V

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->onNotificationEnabledChange(Ljava/lang/String;I)V

    .line 346
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setNotificationEnabled(Ljava/lang/String;ZI)V

    .line 343
    invoke-static {p1, v3}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$402(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;Z)Z

    goto :goto_0
.end method

.method private updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    .locals 15
    .param p1, "oldNotification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "newNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 383
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->getNotificationPosition(Landroid/service/notification/StatusBarNotification;)I

    move-result v13

    .line 384
    .local v13, "position":I
    const/4 v1, -0x1

    if-ne v13, v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "pkg":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v12

    .line 390
    .local v12, "instanceId":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v14, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_5

    .line 392
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .line 393
    .local v11, "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v1

    if-ne v1, v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$1200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 394
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 395
    add-int/lit8 v10, v10, -0x1

    .line 391
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 396
    :cond_3
    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v1

    if-ne v1, v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$1200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v4

    if-eq v1, v4, :cond_4

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 397
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 399
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 400
    :cond_4
    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v1

    if-ne v1, v12, :cond_2

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 402
    add-int/lit8 v10, v10, -0x1

    .line 406
    .end local v11    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_5
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;ILcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V

    .line 408
    .local v0, "newNotificationInfo":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v3, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;ILcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V

    .line 410
    .local v3, "notificationInfoTitle":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$302(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;Z)Z

    .line 411
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    const/4 v10, 0x0

    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_6

    .line 413
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 415
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v4, 0x7f040070

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->setContentView(I)V

    .line 69
    iput-object p0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContext:Landroid/content/Context;

    .line 71
    const v4, 0x7f1101cd

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;

    .line 72
    .local v3, "title":Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->setCenterText(Ljava/lang/CharSequence;)V

    .line 81
    const-string v4, ""

    const/4 v5, 0x2

    new-instance v6, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->initLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v3}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->showLeftButton()V

    .line 89
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->setLeftButtonEnable(Z)V

    .line 91
    const v4, 0x7f1101ce

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/compatible/widget/StatusBarMarkupView;

    .line 92
    .local v1, "jump":Lcom/android/systemui/vivo/compatible/widget/StatusBarMarkupView;
    invoke-virtual {v1}, Lcom/android/systemui/vivo/compatible/widget/StatusBarMarkupView;->initDeleteLayout()V

    .line 93
    invoke-virtual {v1}, Lcom/android/systemui/vivo/compatible/widget/StatusBarMarkupView;->getLeftButton()Landroid/widget/Button;

    move-result-object v2

    .line 94
    .local v2, "jumpBtn":Landroid/widget/Button;
    const v4, 0x7f0e01b9

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 95
    new-instance v4, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$2;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mApplicationUtils:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    .line 105
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .line 106
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    .line 107
    invoke-static {}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->getInstance()Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationUpdateManager:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    .line 109
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationList:Landroid/widget/ListView;

    .line 110
    new-instance v4, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V

    iput-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    .line 111
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationUpdateManager:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    invoke-virtual {v4, v5}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->registerObserver(Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;)V

    .line 118
    new-instance v4, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V

    iput-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;

    .line 119
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;

    invoke-virtual {v4, v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->registerObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;)V

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->initData()V

    .line 121
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationUpdateManager:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->unregisterObserver(Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mChangeObserver:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->unregisterObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method updateNotificationEnabledState(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mContentInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .line 461
    .local v1, "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v2

    if-ne p2, v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v2

    if-eq v2, p3, :cond_1

    .line 462
    invoke-static {v1, p3}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$402(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;Z)Z

    .line 463
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->mNotificationAdapter:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->notifyDataSetChanged()V

    .line 469
    .end local v1    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_0
    return-void

    .line 459
    .restart local v1    # "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
