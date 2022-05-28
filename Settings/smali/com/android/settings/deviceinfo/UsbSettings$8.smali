.class Lcom/android/settings/deviceinfo/UsbSettings$8;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 584
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 587
    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$402(Z)Z

    .line 589
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0923

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 593
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 595
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 598
    :cond_2
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoreRunnable mOldFunction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 608
    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    goto :goto_0

    .line 602
    :cond_3
    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1200()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 603
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_1

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "charging"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_1
.end method
