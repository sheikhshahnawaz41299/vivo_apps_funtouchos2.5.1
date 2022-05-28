.class Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;
.super Ljava/lang/Object;
.source "NotificationOpsListHelper.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationShownObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    return-void
.end method


# virtual methods
.method public onDesktopAppIconBadgeEnabledChange(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 605
    const/4 v0, 0x0

    .local v0, "location":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getInstanceId()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 607
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$1000(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$1100(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->refreshNotificationShownType(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V

    .line 608
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 612
    :cond_0
    return-void

    .line 605
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onKeyguardNotificationDetailsEnabledChange(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 616
    return-void
.end method

.method public onKeyguardNotificationEnabledChange(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 595
    const/4 v0, 0x0

    .local v0, "location":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getInstanceId()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 597
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$1000(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$1100(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->refreshNotificationShownType(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V

    .line 598
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 602
    :cond_0
    return-void

    .line 595
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onNotificationEnabledChange(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 583
    const/4 v0, 0x0

    .local v0, "location":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getInstanceId()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 585
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v1, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->setNotificationOn(Z)V

    .line 586
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$1000(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$1100(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->refreshNotificationShownType(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V

    .line 587
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 588
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$NotificationShownObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 592
    :cond_0
    return-void

    .line 583
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
