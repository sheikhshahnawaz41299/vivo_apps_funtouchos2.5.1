.class public Lcom/vivo/settings/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final EXTRA_SECOND_VOLUME:Ljava/lang/String; = "second_volume"

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "storage_volume"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "vivo.settings.service.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "vivo.settings.service.storage.FORMAT_ONLY"

.field private static final MSG_FORMAT_NEXT:I = 0x0

.field private static final MSG_MASTER_CLEAR:I = 0x1

.field static final TAG:Ljava/lang/String; = "Settings.ESF"


# instance fields
.field private mAlwaysReset:Z

.field private mEmulatedPath:Ljava/lang/String;

.field private mFactoryReset:Z

.field private mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private volatile mNeedStop:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReason:Ljava/lang/String;

.field private mSecondVolume:Landroid/os/storage/StorageVolume;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-class v2, Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/settings/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 56
    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 60
    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 62
    iput-boolean v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mFactoryReset:Z

    .line 63
    iput-boolean v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 64
    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mEmulatedPath:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mNeedStop:Z

    .line 69
    new-instance v0, Lcom/vivo/settings/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/ExternalStorageFormatter$1;-><init>(Lcom/vivo/settings/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 447
    new-instance v0, Lcom/vivo/settings/ExternalStorageFormatter$4;

    invoke-direct {v0, p0}, Lcom/vivo/settings/ExternalStorageFormatter$4;-><init>(Lcom/vivo/settings/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ExternalStorageFormatter;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mNeedStop:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/ExternalStorageFormatter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ExternalStorageFormatter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/vivo/settings/ExternalStorageFormatter;->doCancelMount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/settings/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ExternalStorageFormatter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ExternalStorageFormatter;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/ExternalStorageFormatter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ExternalStorageFormatter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ExternalStorageFormatter;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method static synthetic access$600(Lcom/vivo/settings/ExternalStorageFormatter;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ExternalStorageFormatter;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->stopInner()V

    return-void
.end method

.method static synthetic access$700(Lcom/vivo/settings/ExternalStorageFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ExternalStorageFormatter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method private deleteFileDir(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 366
    new-instance v0, Lcom/vivo/settings/ExternalStorageFormatter$3;

    invoke-direct {v0, p0, p1}, Lcom/vivo/settings/ExternalStorageFormatter$3;-><init>(Lcom/vivo/settings/ExternalStorageFormatter;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/settings/ExternalStorageFormatter$3;->start()V

    .line 378
    return-void
.end method

.method private doCancelMount(Ljava/lang/String;)V
    .locals 6
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v3, "unmounted"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 200
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const/4 v1, 0x0

    .line 202
    .local v1, "extStoragePath":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string v3, "Settings.ESF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mount volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_1
    invoke-direct {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->stopInner()V

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Settings.ESF"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private stopInner()V
    .locals 4

    .prologue
    .line 468
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mSecondVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mNeedStop:Z

    if-nez v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mSecondVolume:Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 470
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mSecondVolume:Landroid/os/storage/StorageVolume;

    .line 471
    const-string v1, "Settings.ESF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change to sencond volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->updateProgressState()V

    .line 499
    :goto_0
    return-void

    .line 475
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mNeedStop:Z

    .line 477
    iget-boolean v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mFactoryReset:Z

    if-eqz v1, :cond_2

    .line 478
    invoke-static {}, Lcom/android/settings/AppFeature;->needClearNetworkLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    new-instance v1, Lcom/vivo/settings/ExternalStorageFormatter$5;

    invoke-direct {v1, p0}, Lcom/vivo/settings/ExternalStorageFormatter$5;-><init>(Lcom/vivo/settings/ExternalStorageFormatter;)V

    invoke-virtual {v1}, Lcom/vivo/settings/ExternalStorageFormatter$5;->start()V

    goto :goto_0

    .line 488
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 490
    const-string v1, "android.intent.extra.REASON"

    iget-object v2, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v0}, Lcom/vivo/settings/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 492
    const-string v1, "Settings.ESF"

    const-string v2, "stopInner format done"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->stopSelf()V

    goto :goto_0

    .line 496
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v1, "Settings.ESF"

    const-string v2, "stopInner format done"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->stopSelf()V

    goto :goto_0
.end method


# virtual methods
.method public deleteFiles(Ljava/io/File;)V
    .locals 12
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    const/16 v11, 0xa

    .line 384
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 385
    .local v2, "fileList":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v8, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mEmulatedPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v7, v8, 0x1

    .line 391
    .local v7, "length":I
    iget-boolean v8, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mNeedStop:Z

    if-eqz v8, :cond_2

    .line 392
    const-string v8, "Settings.ESF"

    const-string v9, "deleteFiles stoped"

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_2
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_7

    aget-object v1, v0, v5

    .line 398
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "filePath":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v7, :cond_3

    .line 396
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 401
    :cond_3
    iget-boolean v8, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mNeedStop:Z

    if-eqz v8, :cond_4

    .line 402
    const-string v8, "Settings.ESF"

    const-string v9, "deleteFiles stoped true"

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 408
    const-string v8, "Settings.ESF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteFiles "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "file.isDirectory()? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v8, "Settings.ESF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteFiles file.getAbsolutePath(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-boolean v8, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mNeedStop:Z

    if-nez v8, :cond_0

    .line 415
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 417
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mEmulatedPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 419
    const-string v8, "Settings.ESF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete dir: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0, v1}, Lcom/vivo/settings/ExternalStorageFormatter;->deleteFiles(Ljava/io/File;)V

    .line 432
    :cond_5
    const-wide/16 v8, 0x32

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 433
    :catch_0
    move-exception v8

    goto/16 :goto_2

    .line 425
    :cond_6
    const-string v8, "Settings.ESF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v11, :cond_5

    .line 428
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_5

    .line 426
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 439
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v11, :cond_0

    .line 441
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_0

    .line 439
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 355
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 356
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 357
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 362
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 359
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v1, "Settings.ESF"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x1

    .line 169
    const-string v1, "Settings.ESF"

    const-string v2, "on dialog cancel"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-boolean v3, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mNeedStop:Z

    .line 173
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->stopSelf()V

    .line 192
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v1, "Settings.ESF"

    const-string v2, "mStorageVolume.getPath() = [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "status":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/vivo/settings/ExternalStorageFormatter;->doCancelMount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mNeedStop:Z

    .line 89
    const-string v0, "Settings.ESF"

    const-string v1, "esf oncreate"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 93
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 96
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 99
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 100
    const-string v0, "Settings.ESF"

    const-string v1, "mWakeLock.acquire();"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 158
    const-string v0, "Settings.ESF"

    const-string v1, "mWakeLock.release();"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 160
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 105
    const-string v0, "vivo.settings.service.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-boolean v3, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mFactoryReset:Z

    .line 108
    :cond_0
    const-string v0, "always_reset"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iput-boolean v3, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 112
    :cond_1
    const-string v0, "android.intent.extra.REASON"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    .line 114
    const-string v0, "storage_volume"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 115
    const-string v0, "second_volume"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mSecondVolume:Landroid/os/storage/StorageVolume;

    .line 117
    const-string v0, "Settings.ESF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "Settings.ESF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFactoryReset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAlwaysReset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mAlwaysReset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "Settings.ESF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStorageVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mSecondVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mSecondVolume:Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mSecondVolume:Landroid/os/storage/StorageVolume;

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    .line 127
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x30f0004

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 129
    iget-boolean v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 131
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 132
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 141
    invoke-virtual {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->updateProgressState()V

    .line 142
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 143
    const-string v0, "Settings.ESF"

    const-string v1, "show progress"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_3
    const/4 v0, 0x3

    return v0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 135
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method public updateProgressDialog(I)V
    .locals 3
    .param p1, "msg"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 336
    iget-boolean v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 338
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 339
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 347
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/vivo/settings/ExternalStorageFormatter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 351
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 342
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method updateProgressState()V
    .locals 8

    .prologue
    const v7, 0x7f0b08c2

    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, "status":Ljava/lang/String;
    const/4 v1, 0x0

    .line 218
    .local v1, "extStoragePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v4, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mEmulatedPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    const-string v4, "Settings.ESF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProgressState path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mFactoryReset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, v7}, Lcom/vivo/settings/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 226
    iget-boolean v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mFactoryReset:Z

    if-eqz v4, :cond_2

    .line 227
    const-string v4, "MasterClearConfirm_udisk"

    iput-object v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    .line 228
    iget-object v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 230
    :cond_2
    iget-object v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vivo/settings/ExternalStorageFormatter;->deleteFileDir(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    const-string v4, "Settings.ESF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProgressState path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current status is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 242
    :cond_4
    invoke-virtual {p0, v7}, Lcom/vivo/settings/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 246
    .local v2, "mountService":Landroid/os/storage/IMountService;
    iget-object v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v4, :cond_0

    .line 249
    iget-object v4, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v4, "Settings.ESF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unmount volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/vivo/settings/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 253
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Settings.ESF"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 259
    :cond_6
    invoke-virtual {p0, v7}, Lcom/vivo/settings/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 260
    invoke-virtual {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 261
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_7

    .line 262
    new-instance v4, Lcom/vivo/settings/ExternalStorageFormatter$2;

    invoke-direct {v4, p0, v2}, Lcom/vivo/settings/ExternalStorageFormatter$2;-><init>(Lcom/vivo/settings/ExternalStorageFormatter;Landroid/os/storage/IMountService;)V

    invoke-virtual {v4}, Lcom/vivo/settings/ExternalStorageFormatter$2;->start()V

    goto/16 :goto_0

    .line 312
    :cond_7
    const-string v4, "Settings.ESF"

    const-string v5, "Unable to locate IMountService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 314
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_8
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 315
    const-string v4, "Settings.ESF"

    const-string v5, "fail MEDIA_BAD_REMOVAL"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->stopInner()V

    goto/16 :goto_0

    .line 317
    :cond_9
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 318
    const-string v4, "Settings.ESF"

    const-string v5, "fail MEDIA_CHECKING"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->stopInner()V

    goto/16 :goto_0

    .line 320
    :cond_a
    const-string v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 321
    const-string v4, "Settings.ESF"

    const-string v5, "fail MEDIA_REMOVED"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->stopInner()V

    goto/16 :goto_0

    .line 323
    :cond_b
    const-string v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 324
    const-string v4, "Settings.ESF"

    const-string v5, "fail MEDIA_SHARED"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->stopInner()V

    goto/16 :goto_0

    .line 327
    :cond_c
    const-string v4, "Settings.ESF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0}, Lcom/vivo/settings/ExternalStorageFormatter;->stopInner()V

    goto/16 :goto_0
.end method
