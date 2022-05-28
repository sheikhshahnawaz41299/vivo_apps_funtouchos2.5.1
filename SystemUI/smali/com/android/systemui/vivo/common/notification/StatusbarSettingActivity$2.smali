.class Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$2;
.super Ljava/lang/Object;
.source "StatusbarSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 110
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$2;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$2;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$200(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$2;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$200(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 134
    return-void
.end method
