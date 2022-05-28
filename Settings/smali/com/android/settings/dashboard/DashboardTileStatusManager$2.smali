.class Lcom/android/settings/dashboard/DashboardTileStatusManager$2;
.super Landroid/os/Handler;
.source "DashboardTileStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardTileStatusManager;
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
    .line 149
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$2;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$2;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1100(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$2;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateAirplaneModeState(Z)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
