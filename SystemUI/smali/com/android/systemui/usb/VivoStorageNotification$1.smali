.class Lcom/android/systemui/usb/VivoStorageNotification$1;
.super Landroid/os/Handler;
.source "VivoStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/VivoStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/VivoStorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/VivoStorageNotification;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/usb/VivoStorageNotification$1;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    const-string v0, "VivoStorageNotification"

    const-string v1, "remove usb otg notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification$1;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    const-string v1, "otg_hook_path"

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/usb/VivoStorageNotification;->access$200(Lcom/android/systemui/usb/VivoStorageNotification;Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification$1;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v0}, Lcom/android/systemui/usb/VivoStorageNotification;->access$300(Lcom/android/systemui/usb/VivoStorageNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification$1;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    const-string v1, "sdcard_hook_path"

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/usb/VivoStorageNotification;->access$200(Lcom/android/systemui/usb/VivoStorageNotification;Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification$1;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v0, v2}, Lcom/android/systemui/usb/VivoStorageNotification;->access$302(Lcom/android/systemui/usb/VivoStorageNotification;Z)Z

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
