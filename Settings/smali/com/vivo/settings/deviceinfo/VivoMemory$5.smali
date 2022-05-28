.class Lcom/vivo/settings/deviceinfo/VivoMemory$5;
.super Landroid/os/storage/StorageEventListener;
.source "VivoMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/deviceinfo/VivoMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;


# direct methods
.method constructor <init>(Lcom/vivo/settings/deviceinfo/VivoMemory;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 529
    const-string v4, "VivoMemory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received storage state changed notification that "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " changed state from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4, p1, p2, p3}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$700(Lcom/vivo/settings/deviceinfo/VivoMemory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v1, 0x0

    .line 533
    .local v1, "exist":Z
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$000(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .line 534
    .local v0, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    invoke-virtual {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 535
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->onStorageStateChanged()V

    .line 537
    invoke-virtual {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v4

    sget-object v5, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeInternal:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-ne v4, v5, :cond_6

    .line 538
    const-string v4, "mounted"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mounted_ro"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 539
    :cond_1
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/preference/Preference;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$800(Lcom/vivo/settings/deviceinfo/VivoMemory;[Landroid/preference/Preference;)V

    .line 544
    :goto_0
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$1000(Lcom/vivo/settings/deviceinfo/VivoMemory;)V

    .line 552
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 557
    .end local v0    # "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$200(Lcom/vivo/settings/deviceinfo/VivoMemory;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/vivo/settings/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    move-result-object v4

    sget-object v5, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    if-ne v4, v5, :cond_4

    .line 558
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$1300(Lcom/vivo/settings/deviceinfo/VivoMemory;Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 559
    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_4

    .line 560
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v5}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$1400(Lcom/vivo/settings/deviceinfo/VivoMemory;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildForOtg(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$1500(Lcom/vivo/settings/deviceinfo/VivoMemory;Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    .line 561
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$1200(Lcom/vivo/settings/deviceinfo/VivoMemory;)V

    .line 564
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    return-void

    .line 541
    .restart local v0    # "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4, v0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$900(Lcom/vivo/settings/deviceinfo/VivoMemory;Landroid/preference/Preference;)V

    .line 542
    const-string v4, "VivoMemory"

    const-string v5, "internal category is removed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    :cond_6
    invoke-virtual {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v4

    sget-object v5, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeOtg:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-ne v4, v5, :cond_2

    .line 546
    const-string v4, "removed"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "bad_removal"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    :cond_7
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4, v0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$1100(Lcom/vivo/settings/deviceinfo/VivoMemory;Landroid/preference/Preference;)V

    .line 548
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$000(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 549
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$1200(Lcom/vivo/settings/deviceinfo/VivoMemory;)V

    goto :goto_1
.end method
