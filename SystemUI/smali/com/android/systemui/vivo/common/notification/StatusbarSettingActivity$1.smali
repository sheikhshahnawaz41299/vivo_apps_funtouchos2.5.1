.class Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;
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
    .line 101
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->finish()V

    .line 106
    return-void
.end method
