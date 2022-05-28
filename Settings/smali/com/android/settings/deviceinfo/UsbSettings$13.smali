.class Lcom/android/settings/deviceinfo/UsbSettings$13;
.super Landroid/os/AsyncTask;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->setCurrentFunction(Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;

.field final synthetic val$finalNewFunction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->val$finalNewFunction:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$600(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/settings/preference/RadioPreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 809
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings$13;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 812
    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCurrentFunction finalNewFunction:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->val$finalNewFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->val$finalNewFunction:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 814
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->val$finalNewFunction:Ljava/lang/String;

    const-string v4, "charging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 815
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2200(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 817
    .local v0, "adbEnable":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 818
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->val$finalNewFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",adb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 826
    .end local v0    # "adbEnable":Z
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 827
    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$402(Z)Z

    .line 828
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/settings/preference/RadioPreference;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1700(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    .line 832
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 815
    goto :goto_0

    .line 820
    .restart local v0    # "adbEnable":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->val$finalNewFunction:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_1

    .line 823
    .end local v0    # "adbEnable":Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->val$finalNewFunction:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_1

    .line 829
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 830
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$13;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 809
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings$13;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
