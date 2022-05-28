.class Lcom/android/settings/deviceinfo/UsbSettings$4;
.super Landroid/os/AsyncTask;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->switchUsbMassStorage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;Z)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iput-boolean p2, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->val$on:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 526
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 530
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchUsbMassStorage run on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->val$on:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->val$on:Z

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$600(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 543
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$402(Z)Z

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$802(J)J

    .line 545
    const/4 v0, 0x0

    return-object v0

    .line 534
    :cond_1
    const-string v0, "persist.sys.bbkem"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$700(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/preference/RadioPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$600(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 526
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$900(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    return-void
.end method
