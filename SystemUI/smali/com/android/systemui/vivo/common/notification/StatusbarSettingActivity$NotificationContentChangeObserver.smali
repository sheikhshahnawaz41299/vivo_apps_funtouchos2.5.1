.class Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;
.super Ljava/lang/Object;
.source "StatusbarSettingActivity.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationContentChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;-><init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V

    return-void
.end method


# virtual methods
.method public onNotificationContentChange()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$800(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V

    .line 470
    return-void
.end method
