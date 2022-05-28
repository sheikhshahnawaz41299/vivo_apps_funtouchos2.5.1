.class public Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;
.super Ljava/lang/Object;
.source "StorageManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;


# instance fields
.field private mTarget:Ljava/lang/Object;

.field private sMethodgetVolumePaths:Ljava/lang/reflect/Method;

.field private sMethodgetVolumeState:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 31
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->mTarget:Ljava/lang/Object;

    .line 32
    const-string v2, "getVolumePaths"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->sMethodgetVolumePaths:Ljava/lang/reflect/Method;

    .line 33
    const-string v2, "getVolumeState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->sMethodgetVolumeState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 22
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->sInstance:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->sInstance:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;

    .line 25
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->sInstance:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getDiskPath(Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;)Ljava/lang/String;
    .locals 7
    .param p1, "diskType"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "diskPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->getVolumePaths()[Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "pathList":[Ljava/lang/String;
    sget-object v6, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->NoStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    .line 59
    .local v6, "type":Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 60
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    move-result-object v6

    .line 61
    if-ne v6, p1, :cond_1

    .line 62
    move-object v1, v4

    .line 66
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 59
    .restart local v4    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getStorageType(Ljava/lang/String;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "/external_sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sdcard1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->SDStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    .line 80
    :goto_0
    return-object v0

    .line 74
    :cond_1
    const-string v0, "/sdcard0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    :cond_2
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->UStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    goto :goto_0

    .line 77
    :cond_3
    const-string v0, "/otg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    goto :goto_0

    .line 80
    :cond_4
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->UStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    goto :goto_0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->sMethodgetVolumePaths:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->mTarget:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    new-array v1, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->sMethodgetVolumeState:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->mTarget:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "removed"

    goto :goto_0
.end method
