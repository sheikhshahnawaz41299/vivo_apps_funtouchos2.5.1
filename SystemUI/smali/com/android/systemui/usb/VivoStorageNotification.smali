.class public Lcom/android/systemui/usb/VivoStorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "VivoStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/VivoStorageNotification$StorageType;,
        Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_STORAGE_INFO:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field private static final ACTION_UNMOUNT_OTG:Ljava/lang/String; = "com.android.systemui.action.UNMOUNT_OTG"

.field private static final DEBUG:Z = true

.field private static final MSG_REMOVE_CHECKING_NOTIFICATION:I = 0x1

.field private static final MSG_REMOVE_USB_OTG_NOTIFICATION:I = 0x0

.field private static final OTG_HOOK_PATH:Ljava/lang/String; = "otg_hook_path"

.field private static final SDCARD_HOOK_PATH:Ljava/lang/String; = "sdcard_hook_path"

.field private static final TAG:Ljava/lang/String; = "VivoStorageNotification"


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mNeedRemoveCheckingNotification:Z

.field private mNotification:Landroid/app/Notification;

.field private mOtgNotification:Landroid/app/Notification;

.field private mOtgUnmoutLocker:Ljava/lang/Object;

.field private mProductionName:Ljava/lang/String;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mOtgUnmoutLocker:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mNeedRemoveCheckingNotification:Z

    .line 74
    new-instance v0, Lcom/android/systemui/usb/VivoStorageNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/VivoStorageNotification$1;-><init>(Lcom/android/systemui/usb/VivoStorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/android/systemui/usb/VivoStorageNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/VivoStorageNotification$2;-><init>(Lcom/android/systemui/usb/VivoStorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/VivoStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/VivoStorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/usb/VivoStorageNotification;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mOtgUnmoutLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/usb/VivoStorageNotification;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/VivoStorageNotification;Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # Landroid/app/PendingIntent;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/VivoStorageNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mNeedRemoveCheckingNotification:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/usb/VivoStorageNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mNeedRemoveCheckingNotification:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/VivoStorageNotification;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/usb/VivoStorageNotification;->getOtgMountedCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/VivoStorageNotification;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/VivoStorageNotification;->unmountVolume(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mStatusBar:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/usb/VivoStorageNotification;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;
    .param p1, "x1"    # Landroid/app/StatusBarManager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mStatusBar:Landroid/app/StatusBarManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/VivoStorageNotification;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/usb/VivoStorageNotification;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 405
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 406
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 407
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mMountService:Landroid/os/storage/IMountService;

    .line 412
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 409
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "VivoStorageNotification"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getOtgMountedCount()I
    .locals 5

    .prologue
    .line 420
    iget-object v3, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 421
    .local v0, "Volumes":[Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .line 422
    .local v2, "otgMounted":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 423
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "otg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    add-int/lit8 v2, v2, 0x1

    .line 422
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_1
    return v2
.end method

.method private getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mStatusBar:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mStatusBar:Landroid/app/StatusBarManager;

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mStatusBar:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private isHighConfiguration()Z
    .locals 3

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "isHigh":Z
    const-string v1, "PD1523F_EX"

    iget-object v2, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mProductionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PD1603F_EX"

    iget-object v2, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mProductionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    :cond_0
    const/4 v0, 0x1

    .line 455
    :cond_1
    return v0
.end method

.method private isOtgMounted()Z
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/systemui/usb/VivoStorageNotification;->getOtgMountedCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v2, "VivoStorageNotification"

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

    .line 131
    const-string v2, "shared"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v2, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/usb/VivoStorageNotification;->getStorageType(Ljava/lang/String;)Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->ExternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    if-ne v2, v3, :cond_0

    .line 135
    const v4, 0x1040524

    const v5, 0x1040525

    const v6, 0x7f0205b2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 142
    :cond_2
    const-string v2, "mounted"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 144
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    .line 148
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/usb/VivoStorageNotification;->getStorageType(Ljava/lang/String;)Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->OtgStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    if-ne v2, v3, :cond_0

    .line 149
    const-string v3, "otg_hook_path"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    .line 150
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v23, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.filemanager"

    const-string v4, "com.android.filemanager.FileManagerActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    const-string v2, "FilePathToBeOpenAfterScan"

    const-string v3, "/storage/otg"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 155
    .local v10, "pi":Landroid/app/PendingIntent;
    new-instance v22, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.UNMOUNT_OTG"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v22, "clickIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 157
    .local v12, "clickPi":Landroid/app/PendingIntent;
    const v4, 0x7f0e01f6

    const v5, 0x7f0e01f7

    const v6, 0x7f0205b2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v11, 0x7f0e01fb

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotificationWithButton(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;ILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 146
    .end local v10    # "pi":Landroid/app/PendingIntent;
    .end local v12    # "clickPi":Landroid/app/PendingIntent;
    .end local v22    # "clickIntent":Landroid/content/Intent;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mNeedRemoveCheckingNotification:Z

    goto :goto_1

    .line 163
    :cond_4
    const-string v2, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/usb/VivoStorageNotification;->getStorageType(Ljava/lang/String;)Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->OtgStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    if-ne v2, v3, :cond_0

    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/usb/VivoStorageNotification;->isOtgMounted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const-string v14, "otg_hook_path"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v21}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    .line 167
    const v15, 0x7f0e01f8

    const/16 v16, 0x0

    const v17, 0x7f0205b2

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v21}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 173
    :cond_5
    const-string v2, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 174
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 175
    .restart local v23    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 178
    .restart local v10    # "pi":Landroid/app/PendingIntent;
    const v4, 0x1040526

    const v5, 0x1040527

    const v6, 0x7f0205b6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 183
    .end local v10    # "pi":Landroid/app/PendingIntent;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v2, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 184
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/usb/VivoStorageNotification;->getStorageType(Ljava/lang/String;)Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->ExternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    if-ne v2, v3, :cond_0

    .line 185
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 186
    .restart local v23    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 189
    .restart local v10    # "pi":Landroid/app/PendingIntent;
    const v4, 0x1040528

    const v5, 0x1040529

    const v6, 0x7f0205b6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 194
    .end local v10    # "pi":Landroid/app/PendingIntent;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v2, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 196
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/usb/VivoStorageNotification;->getStorageType(Ljava/lang/String;)Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->ExternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    if-ne v2, v3, :cond_0

    .line 197
    const v15, 0x104052e

    const v16, 0x104052f

    const v17, 0x7f0205b6

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v21}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 203
    :cond_8
    const-string v2, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 204
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/usb/VivoStorageNotification;->getStorageType(Ljava/lang/String;)Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-result-object v24

    .line 205
    .local v24, "st":Lcom/android/systemui/usb/VivoStorageNotification$StorageType;
    sget-object v2, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->OtgStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_9

    .line 206
    const-string v14, "otg_hook_path"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v21}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    .line 207
    const v15, 0x7f0e01f4

    const v16, 0x7f0e01f5

    const v17, 0x7f0205aa

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v21}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    .line 226
    :goto_2
    sget-object v2, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->OtgStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_c

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 212
    :cond_9
    sget-object v2, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->ExternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_b

    .line 213
    const v15, 0x104052a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/usb/VivoStorageNotification;->isHighConfiguration()Z

    move-result v2

    if-eqz v2, :cond_a

    const v16, 0x7f0e0201

    :goto_3
    const v17, 0x7f0205aa

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v21}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_a
    const v16, 0x7f0e01fa

    goto :goto_3

    .line 220
    :cond_b
    const v15, 0x104052a

    const v16, 0x104052b

    const v17, 0x7f0205aa

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v21}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 230
    :cond_c
    sget-object v2, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->ExternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mNeedRemoveCheckingNotification:Z

    goto/16 :goto_0

    .line 237
    .end local v24    # "st":Lcom/android/systemui/usb/VivoStorageNotification$StorageType;
    :cond_d
    const-string v2, "VivoStorageNotification"

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

.method private setMediaStorageNotification(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "titleId"    # I
    .param p3, "messageId"    # I
    .param p4, "icon"    # I
    .param p5, "visible"    # Z
    .param p6, "dismissable"    # Z
    .param p7, "sound"    # Z
    .param p8, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 243
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/usb/VivoStorageNotification;->setMediaStorageNotificationWithButton(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;ILandroid/app/PendingIntent;)V

    .line 244
    return-void
.end method

.method private declared-synchronized setMediaStorageNotificationWithButton(Ljava/lang/String;IIIZZZLandroid/app/PendingIntent;ILandroid/app/PendingIntent;)V
    .locals 22
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "titleId"    # I
    .param p3, "messageId"    # I
    .param p4, "icon"    # I
    .param p5, "visible"    # Z
    .param p6, "dismissable"    # Z
    .param p7, "sound"    # Z
    .param p8, "pi"    # Landroid/app/PendingIntent;
    .param p9, "buttonTextId"    # I
    .param p10, "buttonPi"    # Landroid/app/PendingIntent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 249
    monitor-enter p0

    const/4 v5, 0x0

    .line 250
    .local v5, "contentView":Landroid/widget/RemoteViews;
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/usb/VivoStorageNotification;->getStorageType(Ljava/lang/String;)Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-result-object v15

    .line 251
    .local v15, "st":Lcom/android/systemui/usb/VivoStorageNotification$StorageType;
    if-eqz p10, :cond_1

    .line 252
    new-instance v6, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f04004c

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v5    # "contentView":Landroid/widget/RemoteViews;
    .local v6, "contentView":Landroid/widget/RemoteViews;
    move-object v5, v6

    .line 256
    .end local v6    # "contentView":Landroid/widget/RemoteViews;
    .restart local v5    # "contentView":Landroid/widget/RemoteViews;
    :goto_0
    const/4 v9, 0x0

    .line 257
    .local v9, "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    .line 258
    .local v10, "notificationExist":Z
    const/4 v12, 0x0

    .line 259
    .local v12, "notificationIdFix":I
    sget-object v17, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->OtgStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_5

    .line 260
    if-eqz p5, :cond_2

    if-nez p6, :cond_2

    .line 261
    const/4 v12, 0x1

    .line 265
    :goto_1
    if-nez p5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mOtgNotification:Landroid/app/Notification;

    move-object/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v17, :cond_3

    .line 370
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .line 254
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "notificationExist":Z
    .end local v12    # "notificationIdFix":I
    :cond_1
    :try_start_1
    new-instance v6, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f04004d

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .end local v5    # "contentView":Landroid/widget/RemoteViews;
    .restart local v6    # "contentView":Landroid/widget/RemoteViews;
    move-object v5, v6

    .end local v6    # "contentView":Landroid/widget/RemoteViews;
    .restart local v5    # "contentView":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 263
    .restart local v9    # "notification":Landroid/app/Notification;
    .restart local v10    # "notificationExist":Z
    .restart local v12    # "notificationIdFix":I
    :cond_2
    const/4 v12, 0x2

    goto :goto_1

    .line 268
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mOtgNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 269
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/usb/VivoStorageNotification;->mOtgNotification:Landroid/app/Notification;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mOtgNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 274
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mOtgNotification:Landroid/app/Notification;

    .line 289
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "notification"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 291
    .local v13, "notificationManager":Landroid/app/NotificationManager;
    if-nez v13, :cond_8

    .line 292
    const-string v17, "VivoStorageNotification"

    const-string v18, "cannot get notification manager"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 249
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "notificationExist":Z
    .end local v12    # "notificationIdFix":I
    .end local v13    # "notificationManager":Landroid/app/NotificationManager;
    .end local v15    # "st":Lcom/android/systemui/usb/VivoStorageNotification$StorageType;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 272
    .restart local v9    # "notification":Landroid/app/Notification;
    .restart local v10    # "notificationExist":Z
    .restart local v12    # "notificationIdFix":I
    .restart local v15    # "st":Lcom/android/systemui/usb/VivoStorageNotification$StorageType;
    :cond_4
    const/4 v10, 0x1

    goto :goto_3

    .line 277
    :cond_5
    if-nez p5, :cond_6

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 280
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 281
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/usb/VivoStorageNotification;->mNotification:Landroid/app/Notification;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 286
    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mNotification:Landroid/app/Notification;

    goto :goto_4

    .line 284
    :cond_7
    const/4 v10, 0x1

    goto :goto_5

    .line 295
    .restart local v13    # "notificationManager":Landroid/app/NotificationManager;
    :cond_8
    if-eqz v10, :cond_9

    if-eqz p5, :cond_9

    .line 296
    iget v0, v9, Landroid/app/Notification;->icon:I

    move/from16 v17, v0

    add-int v11, v17, v12

    .line 297
    .local v11, "notificationId":I
    invoke-virtual {v13, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 298
    if-nez p2, :cond_9

    if-nez p3, :cond_9

    if-eqz p4, :cond_0

    .line 303
    .end local v11    # "notificationId":I
    :cond_9
    if-eqz p5, :cond_13

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 305
    .local v14, "r":Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 306
    .local v16, "title":Ljava/lang/CharSequence;
    if-lez p2, :cond_a

    .line 307
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 309
    :cond_a
    const/4 v8, 0x0

    .line 310
    .local v8, "message":Ljava/lang/CharSequence;
    if-lez p3, :cond_b

    .line 311
    move/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 313
    :cond_b
    const/4 v4, 0x0

    .line 314
    .local v4, "buttonText":Ljava/lang/CharSequence;
    if-lez p9, :cond_c

    .line 315
    move/from16 v0, p9

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 317
    :cond_c
    if-eqz p6, :cond_14

    .line 318
    const/16 v17, 0x10

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 323
    :goto_6
    if-eqz p7, :cond_15

    .line 324
    iget v0, v9, Landroid/app/Notification;->defaults:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->defaults:I

    .line 329
    :goto_7
    move-object/from16 v0, v16

    iput-object v0, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 330
    if-nez p8, :cond_d

    .line 331
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 332
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v7, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p8

    .line 334
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_d
    move/from16 v0, p4

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 335
    if-lez p4, :cond_e

    .line 336
    const v17, 0x7f1100bf

    move/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 338
    :cond_e
    if-eqz v16, :cond_f

    .line 339
    const v17, 0x7f11009b

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 341
    :cond_f
    if-eqz v8, :cond_10

    .line 342
    const v17, 0x7f11010f

    move/from16 v0, v17

    invoke-virtual {v5, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 344
    :cond_10
    if-eqz p10, :cond_11

    if-eqz v4, :cond_11

    .line 345
    const v17, 0x7f110130

    move/from16 v0, v17

    invoke-virtual {v5, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 347
    :cond_11
    if-eqz p10, :cond_12

    .line 348
    const v17, 0x7f110130

    move/from16 v0, v17

    move-object/from16 v1, p10

    invoke-virtual {v5, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 350
    :cond_12
    iput-object v5, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 351
    move-object/from16 v0, p8

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 352
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->visibility:I

    .line 353
    const-string v17, "sys"

    move-object/from16 v0, v17

    iput-object v0, v9, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 356
    .end local v4    # "buttonText":Ljava/lang/CharSequence;
    .end local v8    # "message":Ljava/lang/CharSequence;
    .end local v14    # "r":Landroid/content/res/Resources;
    .end local v16    # "title":Ljava/lang/CharSequence;
    :cond_13
    iget v0, v9, Landroid/app/Notification;->icon:I

    move/from16 v17, v0

    add-int v11, v17, v12

    .line 357
    .restart local v11    # "notificationId":I
    if-eqz p5, :cond_16

    if-eqz p4, :cond_16

    .line 359
    const-string v17, "VivoStorageNotification"

    const-string v18, "noti path:{%s} visible:{%s}, dismissable{%s}, sound:{%s}, notificationId:{%s}"

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    const/16 v20, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/16 v17, 0x0

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v11, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 320
    .end local v11    # "notificationId":I
    .restart local v4    # "buttonText":Ljava/lang/CharSequence;
    .restart local v8    # "message":Ljava/lang/CharSequence;
    .restart local v14    # "r":Landroid/content/res/Resources;
    .restart local v16    # "title":Ljava/lang/CharSequence;
    :cond_14
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->flags:I

    goto/16 :goto_6

    .line 326
    :cond_15
    iget v0, v9, Landroid/app/Notification;->defaults:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->defaults:I

    goto/16 :goto_7

    .line 366
    .end local v4    # "buttonText":Ljava/lang/CharSequence;
    .end local v8    # "message":Ljava/lang/CharSequence;
    .end local v14    # "r":Landroid/content/res/Resources;
    .end local v16    # "title":Ljava/lang/CharSequence;
    .restart local v11    # "notificationId":I
    :cond_16
    const-string v17, "VivoStorageNotification"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cancel notification: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v17, 0x0

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v11, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private unmountVolume(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 373
    new-instance v1, Lcom/android/systemui/usb/VivoStorageNotification$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/VivoStorageNotification$3;-><init>(Lcom/android/systemui/usb/VivoStorageNotification;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/usb/VivoStorageNotification$3;->start()V

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "bbk.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
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

    .line 392
    const-string v1, "com.android.providers.media"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    return-void
.end method


# virtual methods
.method public getStorageType(Ljava/lang/String;)Lcom/android/systemui/usb/VivoStorageNotification$StorageType;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 433
    const-string v0, "otg_hook_path"

    if-ne p1, v0, :cond_0

    .line 434
    sget-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->OtgStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    .line 447
    :goto_0
    return-object v0

    .line 435
    :cond_0
    const-string v0, "sdcard_hook_path"

    if-ne p1, v0, :cond_1

    .line 436
    sget-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->ExternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    goto :goto_0

    .line 438
    :cond_1
    const-string v0, "/external_sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/sdcard1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    :cond_2
    sget-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->ExternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    goto :goto_0

    .line 441
    :cond_3
    const-string v0, "/sdcard0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "emulated/0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 442
    :cond_4
    sget-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->InternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    goto :goto_0

    .line 444
    :cond_5
    const-string v0, "otg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 445
    sget-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->OtgStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    goto :goto_0

    .line 447
    :cond_6
    sget-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->UnkownStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 118
    iget-object v3, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 119
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.action.UNMOUNT_OTG"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "otgFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SystemUI StorageNotification"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/VivoStorageNotification;Lcom/android/systemui/usb/VivoStorageNotification$1;)V

    .line 125
    .local v0, "listener":Lcom/android/systemui/usb/VivoStorageNotification$StorageNotificationEventListener;
    iget-object v3, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 126
    const-string v3, "ro.product.model.bbk"

    const-string v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/usb/VivoStorageNotification;->mProductionName:Ljava/lang/String;

    .line 127
    return-void
.end method
