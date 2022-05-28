.class Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$2;
.super Ljava/lang/Object;
.source "NotificationBlockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
