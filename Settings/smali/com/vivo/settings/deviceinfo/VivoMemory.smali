.class public Lcom/vivo/settings/deviceinfo/VivoMemory;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoMemory.java"


# static fields
.field private static final DLG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DLG_ERROR_UNMOUNT:I = 0x2

.field private static IS_ALLOW_SD_CARD_SAVE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VivoMemory"


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataLoc:Landroid/preference/Preference;

.field private mDataLocSpace:Landroid/preference/Preference;

.field private mIntent:Landroid/content/IntentFilter;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private sClickedMountPoint:Ljava/lang/String;

.field private sLastClickedMountToggle:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "persist.sys.is_allow_pkg_in_sd"

    sput-object v0, Lcom/vivo/settings/deviceinfo/VivoMemory;->IS_ALLOW_SD_CARD_SAVE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoMemory$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/deviceinfo/VivoMemory$1;-><init>(Lcom/vivo/settings/deviceinfo/VivoMemory;)V

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 525
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoMemory$5;

    invoke-direct {v0, p0}, Lcom/vivo/settings/deviceinfo/VivoMemory$5;-><init>(Lcom/vivo/settings/deviceinfo/VivoMemory;)V

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/settings/deviceinfo/VivoMemory;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->onPreferenceUpdate()V

    return-void
.end method

.method static synthetic access$1100(Lcom/vivo/settings/deviceinfo/VivoMemory;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->removePreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vivo/settings/deviceinfo/VivoMemory;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->updateEmptyOtg()V

    return-void
.end method

.method static synthetic access$1300(Lcom/vivo/settings/deviceinfo/VivoMemory;Ljava/lang/String;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getVolumeByPath(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/settings/deviceinfo/VivoMemory;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vivo/settings/deviceinfo/VivoMemory;Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;
    .param p1, "x1"    # Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->addCategory(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/settings/deviceinfo/VivoMemory;)Lcom/vivo/settings/StorageManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/deviceinfo/VivoMemory;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->updateOtgVolumes()V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/settings/deviceinfo/VivoMemory;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sLastClickedMountToggle:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/deviceinfo/VivoMemory;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/settings/deviceinfo/VivoMemory;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->doUnmount()V

    return-void
.end method

.method static synthetic access$700(Lcom/vivo/settings/deviceinfo/VivoMemory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/settings/deviceinfo/VivoMemory;->closeUnmountDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vivo/settings/deviceinfo/VivoMemory;[Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;
    .param p1, "x1"    # [Landroid/preference/Preference;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->addPreferences([Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$900(Lcom/vivo/settings/deviceinfo/VivoMemory;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoMemory;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->removePreference(Landroid/preference/Preference;)V

    return-void
.end method

.method private addCategory(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V
    .locals 2
    .param p1, "category"    # Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/preference/Preference;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->addPreferences([Landroid/preference/Preference;)V

    .line 484
    invoke-virtual {p1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->init()V

    .line 485
    invoke-virtual {p1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->updatePreferencesFromState()V

    .line 486
    return-void
.end method

.method private closeUnmountDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 445
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->removeProgress()V

    .line 449
    const-string v0, "removed"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bad_removal"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "unmounted"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getDialogId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->removeDialog(I)V

    goto :goto_0
.end method

.method private doUnmount()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 369
    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v6, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vivo/settings/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    move-result-object v5

    sget-object v6, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    if-ne v5, v6, :cond_0

    move v0, v3

    .line 370
    .local v0, "isOtg":Z
    :goto_0
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 372
    .local v2, "mountService":Landroid/os/storage/IMountService;
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v6, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0803

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 414
    :goto_1
    return-void

    .end local v0    # "isOtg":Z
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_0
    move v0, v4

    .line 369
    goto :goto_0

    .line 377
    .restart local v0    # "isOtg":Z
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    if-eqz v0, :cond_2

    const v3, 0x7f0b0804

    :goto_2
    invoke-direct {p0, v3}, Lcom/vivo/settings/deviceinfo/VivoMemory;->showProgress(I)V

    .line 386
    new-instance v3, Lcom/vivo/settings/deviceinfo/VivoMemory$3;

    invoke-direct {v3, p0, v2}, Lcom/vivo/settings/deviceinfo/VivoMemory$3;-><init>(Lcom/vivo/settings/deviceinfo/VivoMemory;Landroid/os/storage/IMountService;)V

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/vivo/settings/deviceinfo/VivoMemory$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 410
    new-instance v1, Landroid/content/Intent;

    const-string v3, "bbk.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "mediaIntent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 412
    const-string v3, "com.android.providers.media"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 377
    .end local v1    # "mediaIntent":Landroid/content/Intent;
    :cond_2
    const v3, 0x7f0b0805

    goto :goto_2
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 215
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 216
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 217
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mMountService:Landroid/os/storage/IMountService;

    .line 222
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 219
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "VivoMemory"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getVolumeByPath(Ljava/lang/String;)Landroid/os/storage/StorageVolume;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 569
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 570
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 574
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v3

    .line 569
    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 275
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 276
    .local v2, "mountService":Landroid/os/storage/IMountService;
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v3

    .line 277
    .local v3, "stUsers":[I
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v5

    .line 285
    :cond_1
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 286
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 287
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 322
    .local v0, "mountService":Landroid/os/storage/IMountService;
    new-instance v1, Lcom/vivo/settings/deviceinfo/VivoMemory$2;

    invoke-direct {v1, p0, v0}, Lcom/vivo/settings/deviceinfo/VivoMemory$2;-><init>(Lcom/vivo/settings/deviceinfo/VivoMemory;Landroid/os/storage/IMountService;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 359
    return-void
.end method

.method private onPreferenceUpdate()V
    .locals 3

    .prologue
    .line 489
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/preference/Preference;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mDataLoc:Landroid/preference/Preference;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mDataLocSpace:Landroid/preference/Preference;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->removePreferences([Landroid/preference/Preference;)V

    .line 497
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 498
    return-void
.end method

.method private removeProgress()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 479
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->removeDialog(I)V

    .line 363
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->showDialog(I)V

    .line 364
    return-void
.end method

.method private showProgress(I)V
    .locals 3
    .param p1, "msgRes"    # I

    .prologue
    const/4 v2, 0x1

    .line 465
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 467
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 468
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 469
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 473
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 261
    :try_start_0
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->showDialogInner(I)V

    .line 272
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VivoMemory"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private updateEmptyOtg()V
    .locals 6

    .prologue
    .line 501
    const/4 v1, 0x0

    .line 502
    .local v1, "empty":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    const/4 v3, 0x0

    .line 503
    .local v3, "otgExist":Z
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .line 504
    .local v0, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    invoke-virtual {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v4

    sget-object v5, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeOtg:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-ne v4, v5, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    if-nez v4, :cond_1

    .line 506
    move-object v1, v0

    goto :goto_0

    .line 508
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    :cond_2
    if-eqz v3, :cond_4

    .line 513
    if-eqz v1, :cond_3

    .line 514
    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->removePreference(Landroid/preference/Preference;)V

    .line 515
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 522
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->onPreferenceUpdate()V

    .line 523
    return-void

    .line 518
    :cond_4
    if-nez v1, :cond_3

    .line 519
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildForOtg(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->addCategory(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    goto :goto_1
.end method

.method private updateOtgVolumes()V
    .locals 10

    .prologue
    .line 134
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportOTG()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 135
    iget-object v8, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .line 136
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 137
    iget-object v8, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .line 138
    .local v7, "vvc":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    invoke-virtual {v7}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v8

    sget-object v9, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeOtg:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-ne v8, v9, :cond_0

    .line 139
    invoke-virtual {p0, v7}, Lcom/vivo/settings/deviceinfo/VivoMemory;->removePreference(Landroid/preference/Preference;)V

    .line 140
    iget-object v8, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 143
    goto :goto_0

    .line 144
    .end local v7    # "vvc":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    :cond_1
    iget-object v8, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 145
    .local v6, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v6

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 146
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/vivo/settings/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    move-result-object v8

    sget-object v9, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    if-ne v8, v9, :cond_2

    .line 147
    iget-object v8, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "state":Ljava/lang/String;
    const-string v8, "removed"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "bad_removal"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "unknown"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "unmountable"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 150
    iget-object v8, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildForOtg(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/vivo/settings/deviceinfo/VivoMemory;->addCategory(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    .line 145
    .end local v4    # "state":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 154
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->updateEmptyOtg()V

    .line 156
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->showBBKBackButton()V

    .line 93
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    .line 94
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/AppFeature;->isHighConfiguration(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    const v2, 0x7f0b0979

    invoke-virtual {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoMemory;->setTitle(I)V

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 101
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 102
    invoke-static {}, Lcom/android/settings/AppFeature;->getStorageManagerWrapper()Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 104
    const v2, 0x7f06005c

    invoke-virtual {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoMemory;->addPreferencesFromResource(I)V

    .line 105
    const-string v2, "data_loc_space"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoMemory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mDataLocSpace:Landroid/preference/Preference;

    .line 106
    const-string v2, "data_location"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoMemory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mDataLoc:Landroid/preference/Preference;

    .line 108
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/AppFeature;->isHighConfiguration(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildForRam(Landroid/content/Context;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoMemory;->addCategory(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildForSystem(Landroid/content/Context;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoMemory;->addCategory(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    .line 113
    const-string v2, "0"

    const-string v3, "persist.sys.primary.emulate"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v3}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildForInternal(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    move-result-object v0

    .line 117
    .local v0, "internalCategory":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    invoke-direct {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->addCategory(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    .line 119
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v2}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "internalState":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->removePreference(Landroid/preference/Preference;)V

    .line 126
    .end local v0    # "internalCategory":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    .end local v1    # "internalState":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v2}, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v3}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildForSD(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoMemory;->addCategory(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->updateOtgVolumes()V

    .line 131
    return-void

    .line 97
    :cond_3
    const v2, 0x7f0b027b

    invoke-virtual {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoMemory;->setTitle(I)V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const v4, 0x7f0b037e

    const/4 v2, 0x0

    .line 421
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/vivo/settings/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    move-result-object v1

    sget-object v3, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 422
    .local v0, "isOtg":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    move-object v1, v2

    .line 440
    :goto_1
    return-object v1

    .line 421
    .end local v0    # "isOtg":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    .restart local v0    # "isOtg":Z
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    const v1, 0x7f0b0802

    :goto_2
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/vivo/settings/deviceinfo/VivoMemory$4;

    invoke-direct {v3, p0}, Lcom/vivo/settings/deviceinfo/VivoMemory$4;-><init>(Lcom/vivo/settings/deviceinfo/VivoMemory;)V

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0b00cb

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v0, :cond_2

    const v1, 0x7f0b0801

    :goto_3
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_1

    :cond_1
    const v1, 0x7f0b02a5

    goto :goto_2

    :cond_2
    const v1, 0x7f0b02a6

    goto :goto_3

    .line 434
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b02a7

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v0, :cond_3

    const v1, 0x7f0b0803

    :goto_4
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_1

    :cond_3
    const v1, 0x7f0b02a8

    goto :goto_4

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 210
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 211
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 196
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 197
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .line 199
    .local v0, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    invoke-virtual {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->onPause()V

    goto :goto_0

    .line 202
    .end local v0    # "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    :cond_0
    const-string v2, "VivoMemory"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 228
    const-string v7, "VivoMemory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 230
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 231
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/VivoMemory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return v6

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "VivoMemory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found for intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .line 241
    .local v0, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    invoke-virtual {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 242
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_2

    invoke-virtual {v0, p2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 243
    iput-object p2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 244
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sClickedMountPoint:Ljava/lang/String;

    .line 245
    iget-object v7, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "state":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 248
    :cond_3
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->unmount()V

    goto :goto_0

    .line 250
    :cond_4
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->mount()V

    goto :goto_0

    .line 255
    .end local v0    # "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 160
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 161
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v4, :cond_0

    .line 162
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mIntentFilter:Landroid/content/IntentFilter;

    .line 163
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "SCANNER_MEDIAFILE_SCAN_FINISHED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "file"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mIntent:Landroid/content/IntentFilter;

    if-nez v4, :cond_1

    .line 168
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings.formatotg"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mIntent:Landroid/content/IntentFilter;

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mIntent:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .line 174
    .local v0, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    invoke-virtual {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->onResume()V

    goto :goto_0

    .line 178
    .end local v0    # "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    :cond_2
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mSMWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v4}, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF()Z

    move-result v3

    .line 179
    .local v3, "isTFSupport":Z
    const-string v4, "VivoMemory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume isTFSupport is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v3, :cond_3

    .line 181
    sget-object v4, Lcom/vivo/settings/deviceinfo/VivoMemory;->IS_ALLOW_SD_CARD_SAVE:Ljava/lang/String;

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "isSdSavaAllow":Ljava/lang/String;
    const-string v4, "VivoMemory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSdSavaAllow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mDataLoc:Landroid/preference/Preference;

    const v5, 0x7f0b08a6

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 191
    .end local v2    # "isSdSavaAllow":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->onPreferenceUpdate()V

    .line 192
    return-void

    .line 185
    .restart local v2    # "isSdSavaAllow":Ljava/lang/String;
    :cond_4
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory;->mDataLoc:Landroid/preference/Preference;

    const v5, 0x7f0b0894

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method
