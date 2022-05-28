.class Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$5;
.super Ljava/lang/Object;
.source "StatusbarSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->addNotificationTopview(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$5;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 374
    const-string v1, "StatusbarSettingActivity"

    const-string v2, "mTopNotificationType click !"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$5;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$500(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$5;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$500(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 378
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$5;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    const-string v2, "NotificationTopview"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$1300(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method
