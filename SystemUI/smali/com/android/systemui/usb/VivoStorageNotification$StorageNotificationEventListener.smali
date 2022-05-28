.class Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "VivoStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/VivoStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageNotificationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/VivoStorageNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/usb/VivoStorageNotification;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/VivoStorageNotification;Lcom/android/systemui/usb/VivoStorageNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;
    .param p2, "x1"    # Lcom/android/systemui/usb/VivoStorageNotification$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/VivoStorageNotification;)V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v0}, Lcom/android/systemui/usb/VivoStorageNotification;->access$100(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener$1;-><init>(Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method
