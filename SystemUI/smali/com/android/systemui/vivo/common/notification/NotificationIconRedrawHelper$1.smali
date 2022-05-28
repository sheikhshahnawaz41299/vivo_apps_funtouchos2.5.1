.class Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper$1;
.super Ljava/lang/Object;
.source "NotificationIconRedrawHelper.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFunctionConfigChange()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->access$100(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isRedrawNotificatinIconEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->access$002(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;Z)Z

    .line 207
    invoke-static {}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIconRedrawObserver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->access$100(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getCurrentStatubarsBgStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons(I)V

    .line 209
    return-void
.end method
