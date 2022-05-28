.class public Lcom/vivo/settings/StorageManagerWrapper;
.super Ljava/lang/Object;
.source "StorageManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/StorageManagerWrapper$StorageType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/vivo/settings/StorageManagerWrapper;


# instance fields
.field private isSupportTF:Z

.field private mExternalStoragePath:Ljava/lang/String;

.field private mExternalVolume:Landroid/os/storage/StorageVolume;

.field private mInternalStoragePath:Ljava/lang/String;

.field private mInternalVolume:Landroid/os/storage/StorageVolume;

.field private mOtgStoragePath:Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "StorageManagerWrapper"

    sput-object v0, Lcom/vivo/settings/StorageManagerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "manager"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF:Z

    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mInternalStoragePath:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/vivo/settings/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/vivo/settings/StorageManagerWrapper;->mOtgStoragePath:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/vivo/settings/StorageManagerWrapper;->mExternalVolume:Landroid/os/storage/StorageVolume;

    .line 95
    iput-object v1, p0, Lcom/vivo/settings/StorageManagerWrapper;->mInternalVolume:Landroid/os/storage/StorageVolume;

    .line 31
    check-cast p1, Landroid/os/storage/StorageManager;

    .end local p1    # "manager":Ljava/lang/Object;
    iput-object p1, p0, Lcom/vivo/settings/StorageManagerWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 32
    invoke-direct {p0}, Lcom/vivo/settings/StorageManagerWrapper;->initStoragePath()V

    .line 33
    iget-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF:Z

    .line 36
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/vivo/settings/StorageManagerWrapper;
    .locals 1
    .param p0, "storageManager"    # Ljava/lang/Object;

    .prologue
    .line 24
    sget-object v0, Lcom/vivo/settings/StorageManagerWrapper;->sInstance:Lcom/vivo/settings/StorageManagerWrapper;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/vivo/settings/StorageManagerWrapper;

    invoke-direct {v0, p0}, Lcom/vivo/settings/StorageManagerWrapper;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/vivo/settings/StorageManagerWrapper;->sInstance:Lcom/vivo/settings/StorageManagerWrapper;

    .line 27
    :cond_0
    sget-object v0, Lcom/vivo/settings/StorageManagerWrapper;->sInstance:Lcom/vivo/settings/StorageManagerWrapper;

    return-object v0
.end method

.method private initStoragePath()V
    .locals 10

    .prologue
    .line 98
    iget-object v7, p0, Lcom/vivo/settings/StorageManagerWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 99
    .local v6, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v6

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 100
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/vivo/settings/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    move-result-object v4

    .line 102
    .local v4, "type":Lcom/vivo/settings/StorageManagerWrapper$StorageType;
    sget-object v7, Lcom/vivo/settings/StorageManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "storage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v7, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->ExternalStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    if-ne v4, v7, :cond_0

    .line 104
    iput-object v3, p0, Lcom/vivo/settings/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    .line 105
    iput-object v5, p0, Lcom/vivo/settings/StorageManagerWrapper;->mExternalVolume:Landroid/os/storage/StorageVolume;

    .line 107
    :cond_0
    sget-object v7, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    if-ne v4, v7, :cond_1

    .line 108
    iput-object v3, p0, Lcom/vivo/settings/StorageManagerWrapper;->mInternalStoragePath:Ljava/lang/String;

    .line 109
    iput-object v5, p0, Lcom/vivo/settings/StorageManagerWrapper;->mInternalVolume:Landroid/os/storage/StorageVolume;

    .line 111
    :cond_1
    sget-object v7, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    if-ne v4, v7, :cond_2

    .line 112
    iput-object v3, p0, Lcom/vivo/settings/StorageManagerWrapper;->mOtgStoragePath:Ljava/lang/String;

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "type":Lcom/vivo/settings/StorageManagerWrapper$StorageType;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    sget-object v7, Lcom/vivo/settings/StorageManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExternalStoragePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/settings/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mInternalStoragePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/settings/StorageManagerWrapper;->mInternalStoragePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mOtgStoragePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/settings/StorageManagerWrapper;->mOtgStoragePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method


# virtual methods
.method public getAvailSize(Ljava/lang/String;)J
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x44800000    # 1024.0f

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vivo/settings/StorageManagerWrapper;->getAvailSizeBytes(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v1, v4

    div-float/2addr v1, v4

    float-to-long v2, v1

    .line 214
    :goto_0
    return-wide v2

    .line 212
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getAvailSizeBytes(Ljava/lang/String;)J
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 181
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "fs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    mul-long/2addr v2, v4

    .line 185
    .end local v1    # "fs":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/vivo/settings/StorageManagerWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getExternalStorage()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nofs"

    goto :goto_0
.end method

.method public getExternalStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mExternalVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public getInternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mInternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mInternalStoragePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mInternalStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nofs"

    goto :goto_0
.end method

.method public getInternalStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mInternalVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public getOtgStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->mOtgStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageType(Ljava/lang/String;)Lcom/vivo/settings/StorageManagerWrapper$StorageType;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p1, :cond_4

    .line 69
    const-string v0, "/external_sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sdcard1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    sget-object v0, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->ExternalStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    .line 80
    :goto_0
    return-object v0

    .line 72
    :cond_1
    const-string v0, "/sdcard0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "emulated/0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    :cond_2
    sget-object v0, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "otg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    sget-object v0, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    goto :goto_0

    .line 80
    :cond_4
    sget-object v0, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->UnkownStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    goto :goto_0
.end method

.method public getTotalSize(Ljava/lang/String;)J
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/high16 v2, 0x44800000    # 1024.0f

    .line 224
    invoke-virtual {p0, p1}, Lcom/vivo/settings/StorageManagerWrapper;->getTotalSizeBytes(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v2

    div-float/2addr v0, v2

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTotalSizeBytes(Ljava/lang/String;)J
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 196
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, "fs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    mul-long/2addr v2, v4

    .line 200
    .end local v1    # "fs":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/vivo/settings/StorageManagerWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/vivo/settings/StorageManagerWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/vivo/settings/StorageManagerWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "removed"

    goto :goto_0
.end method

.method public isSupportTF()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF:Z

    return v0
.end method
