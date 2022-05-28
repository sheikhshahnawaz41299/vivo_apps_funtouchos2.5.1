.class Lcom/android/systemui/power/LowPowerDialogActivity$1;
.super Ljava/lang/Object;
.source "LowPowerDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/LowPowerDialogActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/LowPowerDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/LowPowerDialogActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/power/LowPowerDialogActivity$1;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity$1;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-static {v0}, Lcom/android/systemui/power/LowPowerDialogActivity;->access$000(Lcom/android/systemui/power/LowPowerDialogActivity;)Lcom/android/systemui/power/PowerWarningsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerWarningsManager;->showLowPowerWhenUnlock(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity$1;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-virtual {v0}, Lcom/android/systemui/power/LowPowerDialogActivity;->finish()V

    .line 95
    return-void
.end method
