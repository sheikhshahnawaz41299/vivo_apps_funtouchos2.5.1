.class Lcom/android/settings/dashboard/DashboardTileStatusManager$3;
.super Ljava/lang/Object;
.source "DashboardTileStatusManager.java"

# interfaces
.implements Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardTileStatusManager;->getListener(I)Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/BbkMoveBoolButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/BbkMoveBoolButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 466
    const-string v0, "DashboardTileStatusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update airplane isChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-virtual {p1}, Landroid/widget/BbkMoveBoolButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1202(Lcom/android/settings/dashboard/DashboardTileStatusManager;Z)Z

    .line 468
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1200(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1300(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/AppFeature;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1402(Lcom/android/settings/dashboard/DashboardTileStatusManager;Z)Z

    .line 470
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1400(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/BbkMoveBoolButton;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1300(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1200(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setAirplaneMode(Landroid/content/Context;Z)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1200(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/BbkMoveBoolButton;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    invoke-virtual {p1}, Landroid/widget/BbkMoveBoolButton;->startLoading()Z

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1500(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 477
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$400(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    .line 478
    return-void
.end method
