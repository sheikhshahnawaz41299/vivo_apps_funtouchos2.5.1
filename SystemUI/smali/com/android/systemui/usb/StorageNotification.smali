.class public Lcom/android/systemui/usb/StorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_STORAGE_INFO:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field private static final ACTION_UNMOUNT_OTG:Ljava/lang/String; = "com.android.systemui.action.UNMOUNT_OTG"

.field private static final DEBUG:Z = true

.field private static final MSG_REMOVE_CHECKING_NOTIFICATION:I = 0x1

.field private static final MSG_REMOVE_USB_OTG_NOTIFICATION:I = 0x0

.field private static final POP_UMS_ACTIVITY_ON_CONNECT:Z = true

.field private static final TAG:Ljava/lang/String; = "StorageNotification"


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mNeedRemoveCheckingNotification:Z

.field private mOtgUnmoutLocker:Ljava/lang/Object;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;

.field private mVivoOtgNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 545
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 571
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mOtgUnmoutLocker:Ljava/lang/Object;

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNeedRemoveCheckingNotification:Z

    .line 708
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$3;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Landroid/app/PendingIntent;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/usb/StorageNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNeedRemoveCheckingNotification:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/usb/StorageNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mNeedRemoveCheckingNotification:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/StorageNotification;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->getOtgMountedCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->unmountVolume(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStatusBar:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/usb/StorageNotification;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Landroid/app/StatusBarManager;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mStatusBar:Landroid/app/StatusBarManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/usb/StorageNotification;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mOtgUnmoutLocker:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized getMediaStorageNotificationDismissable()Z
    .locals 2

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 442
    const/4 v0, 0x1

    .line 444
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 607
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 608
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 609
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    .line 614
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 611
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "StorageNotification"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 606
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getOtgMounted()Z
    .locals 1

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->getOtgMountedCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOtgMountedCount()I
    .locals 5

    .prologue
    .line 530
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 531
    .local v0, "Volumes":[Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .line 532
    .local v2, "otgMounted":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 533
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "otg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    add-int/lit8 v2, v2, 0x1

    .line 532
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_1
    return v2
.end method

.method private getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStatusBar:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStatusBar:Landroid/app/StatusBarManager;

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStatusBar:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v2, "StorageNotification"

    const-string v3, "Media {%s} state changed from {%s} -> {%s}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v2, "shared"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v2, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    const-string v2, "/storage/sdcard1"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    const v3, 0x1040524

    const v4, 0x1040525

    const v5, 0x7f0205b2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 172
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 173
    :cond_3
    const-string v2, "mounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 179
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 183
    :goto_1
    const-string v2, "otg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v21, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.filemanager"

    const-string v4, "com.android.filemanager.FileManagerActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 188
    const-string v2, "FilePathToBeOpenAfterScan"

    const-string v3, "/storage/otg"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 193
    .local v8, "pi":Landroid/app/PendingIntent;
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.UNMOUNT_OTG"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v20, "clickIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 195
    .local v10, "clickPi":Landroid/app/PendingIntent;
    const v3, 0x7f0e01f6

    const v4, 0x7f0e01f7

    const v5, 0x7f0205b2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v9, 0x7f0e01fb

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotificationOtg(IIIZZLandroid/app/PendingIntent;ILandroid/app/PendingIntent;)V

    .line 201
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "clickPi":Landroid/app/PendingIntent;
    .end local v20    # "clickIntent":Landroid/content/Intent;
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 181
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNeedRemoveCheckingNotification:Z

    goto :goto_1

    .line 202
    :cond_6
    const-string v2, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 204
    const-string v2, "otg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/usb/StorageNotification;->getOtgMounted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    const v12, 0x7f0e01f8

    const v13, 0x7f0e01f7

    const v14, 0x7f0205b2

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 210
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v19}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotificationOtg(IIIZZLandroid/app/PendingIntent;ILandroid/app/PendingIntent;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 222
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 223
    const-string v2, "shared"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 228
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 229
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 235
    :cond_8
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 237
    const-string v2, "/storage/sdcard1"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 238
    const v12, 0x104052c

    const v13, 0x104052d

    const v14, 0x7f0205af

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 248
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 246
    :cond_a
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 255
    :cond_b
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 256
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 258
    :cond_c
    const-string v2, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 263
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 264
    .restart local v21    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 267
    .restart local v8    # "pi":Landroid/app/PendingIntent;
    const v3, 0x1040526

    const v4, 0x1040527

    const v5, 0x7f0205b6

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 271
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 272
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v2, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 278
    const-string v2, "/storage/sdcard1"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 279
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 280
    .restart local v21    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 283
    .restart local v8    # "pi":Landroid/app/PendingIntent;
    const v3, 0x1040528

    const v4, 0x1040529

    const v5, 0x7f0205b6

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 288
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 289
    :cond_f
    const-string v2, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 295
    const-string v2, "/storage/sdcard1"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 296
    const v12, 0x104052e

    const v13, 0x104052f

    const v14, 0x7f0205b6

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 302
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 303
    :cond_11
    const-string v2, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 309
    const-string v2, "otg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    .line 310
    .local v22, "isOtg":Z
    const-string v2, "/storage/sdcard1"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 311
    .local v23, "isSD":Z
    if-eqz v22, :cond_14

    const v12, 0x7f0e01f4

    :goto_3
    if-eqz v22, :cond_15

    const v13, 0x7f0e01f5

    :goto_4
    const v14, 0x7f0205aa

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 319
    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    :cond_12
    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mNeedRemoveCheckingNotification:Z

    .line 326
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 311
    :cond_14
    const v12, 0x104052a

    goto :goto_3

    :cond_15
    if-eqz v23, :cond_16

    const v13, 0x7f0e01fa

    goto :goto_4

    :cond_16
    const v13, 0x104052b

    goto :goto_4

    .line 328
    .end local v22    # "isOtg":Z
    .end local v23    # "isSD":Z
    :cond_17
    const-string v2, "StorageNotification"

    const-string v3, "Ignoring unknown state {%s}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    .line 126
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "st":Ljava/lang/String;
    const-string v1, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    const/4 p1, 0x0

    .line 138
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 139
    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 13
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "visible"    # Z
    .param p5, "dismissable"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f04004d

    invoke-direct {v2, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 454
    .local v2, "contentView":Landroid/widget/RemoteViews;
    if-nez p4, :cond_1

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 522
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 458
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 461
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v6, :cond_0

    .line 465
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v9, :cond_2

    if-eqz p4, :cond_2

    .line 470
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v5, v9, Landroid/app/Notification;->icon:I

    .line 471
    .local v5, "notificationId":I
    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 474
    .end local v5    # "notificationId":I
    :cond_2
    if-eqz p4, :cond_5

    .line 475
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 476
    .local v7, "r":Landroid/content/res/Resources;
    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 477
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 479
    .local v4, "message":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v9, :cond_3

    .line 480
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 481
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Landroid/app/Notification;->when:J

    .line 484
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Landroid/app/Notification;->defaults:I

    .line 486
    if-eqz p5, :cond_6

    .line 487
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v10, 0x10

    iput v10, v9, Landroid/app/Notification;->flags:I

    .line 492
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v8, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 493
    if-nez p6, :cond_4

    .line 494
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 495
    .local v3, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v9, v10, v3, v11, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 499
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move/from16 v0, p3

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 500
    if-eqz v2, :cond_7

    .line 501
    const v9, 0x7f1100bf

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->icon:I

    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 502
    const v9, 0x7f11009b

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 503
    const v9, 0x7f11010f

    invoke-virtual {v2, v9, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 504
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v2, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 505
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 511
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v10, 0x1

    iput v10, v9, Landroid/app/Notification;->visibility:I

    .line 512
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-string v10, "sys"

    iput-object v10, v9, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 515
    .end local v4    # "message":Ljava/lang/CharSequence;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v5, v9, Landroid/app/Notification;->icon:I

    .line 516
    .restart local v5    # "notificationId":I
    if-eqz p4, :cond_8

    .line 517
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v5, v10, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 452
    .end local v2    # "contentView":Landroid/widget/RemoteViews;
    .end local v5    # "notificationId":I
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 489
    .restart local v2    # "contentView":Landroid/widget/RemoteViews;
    .restart local v4    # "message":Ljava/lang/CharSequence;
    .restart local v6    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v10, 0x2

    iput v10, v9, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 507
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1060059

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, v9, Landroid/app/Notification;->color:I

    .line 509
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, v8, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 520
    .end local v4    # "message":Ljava/lang/CharSequence;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "title":Ljava/lang/CharSequence;
    .restart local v5    # "notificationId":I
    :cond_8
    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v5, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setMediaStorageNotificationOtg(IIIZZLandroid/app/PendingIntent;ILandroid/app/PendingIntent;)V
    .locals 14
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "visible"    # Z
    .param p5, "dismissable"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;
    .param p7, "buttonTextId"    # I
    .param p8, "buttonPi"    # Landroid/app/PendingIntent;

    .prologue
    .line 621
    monitor-enter p0

    if-nez p4, :cond_1

    .line 701
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    if-nez v10, :cond_2

    .line 626
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    iput-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    .line 627
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    const-wide/16 v12, 0x0

    iput-wide v12, v10, Landroid/app/Notification;->when:J

    .line 630
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 633
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v7, :cond_0

    .line 637
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    if-eqz v10, :cond_3

    if-eqz p4, :cond_3

    .line 642
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    iget v6, v10, Landroid/app/Notification;->icon:I

    .line 643
    .local v6, "notificationId":I
    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 646
    .end local v6    # "notificationId":I
    :cond_3
    if-eqz p4, :cond_a

    .line 647
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 648
    .local v8, "r":Landroid/content/res/Resources;
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 649
    .local v9, "title":Ljava/lang/CharSequence;
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 650
    .local v5, "message":Ljava/lang/CharSequence;
    move/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 652
    .local v2, "buttonText":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    iget v11, v10, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, -0x2

    iput v11, v10, Landroid/app/Notification;->defaults:I

    .line 654
    if-eqz p5, :cond_b

    .line 655
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    const/16 v11, 0x10

    iput v11, v10, Landroid/app/Notification;->flags:I

    .line 660
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    iput-object v9, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 661
    if-nez p6, :cond_4

    .line 662
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 663
    .local v4, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v10, v11, v4, v12, v13}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 667
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    move/from16 v0, p3

    iput v0, v10, Landroid/app/Notification;->icon:I

    .line 669
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f04004c

    invoke-direct {v3, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 672
    .local v3, "contentView":Landroid/widget/RemoteViews;
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->icon:I

    if-eqz v10, :cond_5

    .line 673
    const v10, 0x7f1100bf

    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    iget v11, v11, Landroid/app/Notification;->icon:I

    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 675
    :cond_5
    if-eqz v9, :cond_6

    .line 676
    const v10, 0x7f11009b

    invoke-virtual {v3, v10, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 678
    :cond_6
    if-eqz v5, :cond_7

    .line 679
    const v10, 0x7f1100c1

    invoke-virtual {v3, v10, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 682
    :cond_7
    if-eqz v2, :cond_8

    .line 683
    const v10, 0x7f110130

    invoke-virtual {v3, v10, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 686
    :cond_8
    if-eqz p8, :cond_9

    .line 687
    const v10, 0x7f110130

    move-object/from16 v0, p8

    invoke-virtual {v3, v10, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 690
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    iput-object v3, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 691
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 694
    .end local v2    # "buttonText":Ljava/lang/CharSequence;
    .end local v3    # "contentView":Landroid/widget/RemoteViews;
    .end local v5    # "message":Ljava/lang/CharSequence;
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "title":Ljava/lang/CharSequence;
    :cond_a
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    iget v6, v10, Landroid/app/Notification;->icon:I

    .line 695
    .restart local v6    # "notificationId":I
    if-eqz p4, :cond_c

    .line 696
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v10, v6, v11, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 621
    .end local v6    # "notificationId":I
    .end local v7    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 657
    .restart local v2    # "buttonText":Ljava/lang/CharSequence;
    .restart local v5    # "message":Ljava/lang/CharSequence;
    .restart local v7    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v8    # "r":Landroid/content/res/Resources;
    .restart local v9    # "title":Ljava/lang/CharSequence;
    :cond_b
    :try_start_1
    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mVivoOtgNotification:Landroid/app/Notification;

    const/4 v11, 0x2

    iput v11, v10, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 699
    .end local v2    # "buttonText":Ljava/lang/CharSequence;
    .end local v5    # "message":Ljava/lang/CharSequence;
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "title":Ljava/lang/CharSequence;
    .restart local v6    # "notificationId":I
    :cond_c
    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v10, v6, v11}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 13
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "sound"    # Z
    .param p5, "visible"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    const-string v9, "persist.sys.ums"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 360
    const/4 p1, 0x0

    .line 361
    const/4 p2, 0x0

    .line 362
    const/16 p3, 0x0

    .line 363
    const/16 p4, 0x0

    .line 364
    const/16 p5, 0x0

    .line 365
    const/16 p6, 0x0

    .line 368
    :cond_0
    if-nez p5, :cond_2

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    .line 436
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 372
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 375
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v6, :cond_1

    .line 379
    if-eqz p5, :cond_5

    .line 380
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 381
    .local v7, "r":Landroid/content/res/Resources;
    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 382
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 384
    .local v4, "message":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v9, :cond_3

    .line 385
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 386
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move/from16 v0, p3

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 387
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Landroid/app/Notification;->when:J

    .line 390
    :cond_3
    if-eqz p4, :cond_6

    .line 391
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/app/Notification;->defaults:I

    .line 396
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v10, 0x2

    iput v10, v9, Landroid/app/Notification;->flags:I

    .line 398
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v8, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 399
    if-nez p6, :cond_4

    .line 400
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v3, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v9, v10, v3, v11, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 404
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1060059

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, v9, Landroid/app/Notification;->color:I

    .line 406
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, v8, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 407
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v10, 0x1

    iput v10, v9, Landroid/app/Notification;->visibility:I

    .line 408
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-string v10, "sys"

    iput-object v10, v9, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 410
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "adb_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_7

    const/4 v2, 0x1

    .line 415
    .local v2, "adbOn":Z
    :goto_2
    if-nez v2, :cond_5

    .line 425
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v9, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 429
    .end local v2    # "adbOn":Z
    .end local v4    # "message":Ljava/lang/CharSequence;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v5, v9, Landroid/app/Notification;->icon:I

    .line 430
    .local v5, "notificationId":I
    if-eqz p5, :cond_8

    .line 431
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v5, v10, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 359
    .end local v5    # "notificationId":I
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 393
    .restart local v4    # "message":Ljava/lang/CharSequence;
    .restart local v6    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 410
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 434
    .end local v4    # "message":Ljava/lang/CharSequence;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "title":Ljava/lang/CharSequence;
    .restart local v5    # "notificationId":I
    :cond_8
    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v5, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private unmountVolume(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 573
    new-instance v1, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/usb/StorageNotification$2;->start()V

    .line 590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "bbk.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "mediaIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 592
    const-string v1, "com.android.providers.media"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 594
    return-void
.end method


# virtual methods
.method public start()V
    .locals 9

    .prologue
    .line 102
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 103
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 105
    .local v0, "connected":Z
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.android.systemui.action.UNMOUNT_OTG"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "otgFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    const-string v4, "StorageNotification"

    const-string v5, "Startup with UMS connection %s (media state %s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SystemUI StorageNotification"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 115
    new-instance v1, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V

    .line 116
    .local v1, "listener":Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;
    invoke-virtual {v1, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->onUsbMassStorageConnectionChanged(Z)V

    .line 117
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 118
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 351
    return-void
.end method
