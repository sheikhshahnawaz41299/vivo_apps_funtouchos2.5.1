.class Lcom/android/systemui/usb/VivoStorageNotification$3;
.super Ljava/lang/Thread;
.source "VivoStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/VivoStorageNotification;->unmountVolume(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/VivoStorageNotification;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/VivoStorageNotification;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/systemui/usb/VivoStorageNotification$3;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    iput-object p2, p0, Lcom/android/systemui/usb/VivoStorageNotification$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 376
    iget-object v2, p0, Lcom/android/systemui/usb/VivoStorageNotification$3;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/VivoStorageNotification;->access$1000(Lcom/android/systemui/usb/VivoStorageNotification;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 377
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/usb/VivoStorageNotification$3;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/VivoStorageNotification;->access$1100(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 378
    .local v1, "mountService":Landroid/os/storage/IMountService;
    iget-object v2, p0, Lcom/android/systemui/usb/VivoStorageNotification$3;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/VivoStorageNotification;->access$500(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/usb/VivoStorageNotification$3;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    monitor-exit v3

    .line 388
    :goto_0
    return-void

    .line 381
    :cond_0
    const-string v2, "VivoStorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unmountVolume"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/usb/VivoStorageNotification$3;->val$path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/usb/VivoStorageNotification$3;->val$path:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 384
    .restart local v1    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "VivoStorageNotification"

    const-string v4, "unmountVolume error!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
