.class Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$1;
.super Landroid/os/Handler;
.source "VivoVolumeCategory.java"


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
    .line 47
    iput-object p1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$1;->this$0:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [J

    move-object v1, v2

    check-cast v1, [J

    .line 53
    .local v1, "size":[J
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$1;->this$0:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    const/4 v3, 0x1

    aget-wide v6, v1, v3

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->updateApproximate(JJ)V

    goto :goto_0

    .line 56
    .end local v1    # "size":[J
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 57
    .local v0, "details":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$1;->this$0:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    invoke-virtual {v2, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 60
    .end local v0    # "details":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    :pswitch_2
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$1;->this$0:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    invoke-static {v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->access$000(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
