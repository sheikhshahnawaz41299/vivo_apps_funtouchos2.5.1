.class Lcom/android/settings/dashboard/DashboardTileStatusManager$6;
.super Ljava/lang/Object;
.source "DashboardTileStatusManager.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardTileStatusManager;->registerRadioState()V
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
    .line 583
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$6;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$6;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$900(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    .line 587
    return-void
.end method
