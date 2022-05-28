.class Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;
.super Ljava/lang/Object;
.source "NotificationTopPreViewTypeSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->access$800(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0204b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->access$100(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0204b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0204b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setNotificationTipStyle(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "tab"

    const-string v2, "mSilentBtn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v0

    const-string v1, "1063"

    const-string v2, "106310"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 190
    return-void
.end method
