.class Lcom/android/settings/deviceinfo/UsbSettings$1;
.super Landroid/os/Handler;
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
    .line 88
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f0b0943

    const/4 v2, 0x1

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0b0944

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.vivo.PCTools"

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0b0945

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0883

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 116
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$300(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
