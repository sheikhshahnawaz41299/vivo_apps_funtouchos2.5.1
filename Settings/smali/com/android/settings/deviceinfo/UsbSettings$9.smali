.class Lcom/android/settings/deviceinfo/UsbSettings$9;
.super Landroid/os/storage/StorageEventListener;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 616
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageStateChanged path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UmsSwitching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$400()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$400()Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 624
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$402(Z)Z

    .line 625
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$300(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1200()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 628
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 635
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 636
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    goto :goto_0

    .line 630
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "charging"

    invoke-virtual {v0, v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_1

    .line 637
    :cond_4
    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$402(Z)Z

    .line 639
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$300(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 649
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 650
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    goto :goto_0

    .line 643
    :cond_6
    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$800()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$800()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 644
    :cond_7
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStorageEventListener MEDIA_SHARED, set USB_FUNCTION_MASS_STORAGE UmsSwitchTimeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$800()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$9;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_2
.end method
