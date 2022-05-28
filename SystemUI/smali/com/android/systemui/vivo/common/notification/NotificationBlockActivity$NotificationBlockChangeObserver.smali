.class Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;
.super Ljava/lang/Object;
.source "NotificationBlockActivity.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationBlockChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V

    return-void
.end method


# virtual methods
.method public onDesktopAppIconBadgeEnabledChange(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 594
    return-void
.end method

.method public onKeyguardNotificationDetailsEnabledChange(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 590
    return-void
.end method

.method public onKeyguardNotificationEnabledChange(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 586
    return-void
.end method

.method public onNotificationEnabledChange(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationBlockChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->updateNotificationEnabledState(Ljava/lang/String;IZ)V

    .line 582
    return-void
.end method
