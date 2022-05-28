.class Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$2;
.super Ljava/lang/Object;
.source "VivoVolumeCategory.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;


# direct methods
.method constructor <init>(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateApproximate(Lcom/android/settings/deviceinfo/StorageMeasurement;JJ)V
    .locals 4
    .param p1, "meas"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p2, "totalSize"    # J
    .param p4, "availSize"    # J

    .prologue
    const/4 v3, 0x1

    .line 77
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    invoke-static {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->access$100(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    aput-wide p4, v1, v3

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    return-void
.end method

.method public updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 2
    .param p1, "meas"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p2, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    invoke-static {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->access$100(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    return-void
.end method
