.class Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference$1;
.super Ljava/lang/Object;
.source "NotificationOpsItemPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->access$100(Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;)Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "label"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->access$100(Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;)Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "uid"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->access$100(Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;)Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v1, "instanceId"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->access$100(Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;)Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getInstanceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
