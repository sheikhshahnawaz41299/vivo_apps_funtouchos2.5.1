.class Lcom/android/settings/dashboard/DashboardTileStatusManager$4;
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
    .line 482
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/BbkMoveBoolButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/BbkMoveBoolButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$500(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    const-string v1, "DashboardTileStatusManager"

    const-string v2, "do not support glove mode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-virtual {p1}, Landroid/widget/BbkMoveBoolButton;->isChecked()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1602(Lcom/android/settings/dashboard/DashboardTileStatusManager;Z)Z

    .line 490
    const-string v1, "DashboardTileStatusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update glovemode isChecked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1600(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1300(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "glove_mode"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1600(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 493
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1300(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "last_glove_mode"

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1600(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1700(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 496
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    const-string v2, "bbk_touch_screen_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1702(Lcom/android/settings/dashboard/DashboardTileStatusManager;Lcom/vivo/services/touchscreen/IBBKTouchScreenService;)Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    .line 500
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1700(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1600(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 502
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1700(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService;->TouchScreenGlovesModeSwitch(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    move v1, v3

    .line 491
    goto :goto_1

    :cond_4
    move v2, v3

    .line 493
    goto :goto_2

    .line 504
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1700(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService;->TouchScreenGlovesModeSwitch(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
