.class Lcom/android/systemui/usb/StorageNotification$3;
.super Landroid/os/Handler;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$3;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 710
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 717
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$3;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->access$1100(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 720
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$3;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->access$1200(Lcom/android/systemui/usb/StorageNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$3;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->access$1100(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;)V

    .line 722
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$3;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->access$1202(Lcom/android/systemui/usb/StorageNotification;Z)Z

    goto :goto_0

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
