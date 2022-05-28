.class Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;
.super Ljava/lang/Object;
.source "NotificationOpsDetailsActivity.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationDetailsChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$1;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public onDesktopAppIconBadgeEnabledChange(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 315
    return-void
.end method

.method public onKeyguardNotificationDetailsEnabledChange(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 311
    return-void
.end method

.method public onKeyguardNotificationEnabledChange(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 307
    return-void
.end method

.method public onNotificationEnabledChange(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->access$100(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->notificationPkgNameChangeBack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity$NotificationDetailsChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;Ljava/lang/String;IZ)V

    .line 303
    :cond_0
    return-void
.end method
