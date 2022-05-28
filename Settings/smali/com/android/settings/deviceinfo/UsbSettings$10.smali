.class Lcom/android/settings/deviceinfo/UsbSettings$10;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;I)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iput p2, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 686
    iget v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->val$id:I

    packed-switch v0, :pswitch_data_0

    .line 708
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 709
    :goto_1
    return-void

    .line 688
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1400(Lcom/android/settings/deviceinfo/UsbSettings;)V

    .line 689
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1600(Lcom/android/settings/deviceinfo/UsbSettings;Lcom/vivo/settings/preference/RadioPreference;)V

    .line 693
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1700(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    goto :goto_1

    .line 696
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1400(Lcom/android/settings/deviceinfo/UsbSettings;)V

    .line 697
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mtp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 699
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1800(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1600(Lcom/android/settings/deviceinfo/UsbSettings;Lcom/vivo/settings/preference/RadioPreference;)V

    goto :goto_0

    .line 702
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1400(Lcom/android/settings/deviceinfo/UsbSettings;)V

    .line 703
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "ptp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 705
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$10;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1900(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1600(Lcom/android/settings/deviceinfo/UsbSettings;Lcom/vivo/settings/preference/RadioPreference;)V

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
