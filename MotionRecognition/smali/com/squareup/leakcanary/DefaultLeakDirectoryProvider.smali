.class public final Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;
.super Ljava/lang/Object;
.source "DefaultLeakDirectoryProvider.java"

# interfaces
.implements Lcom/squareup/leakcanary/LeakDirectoryProvider;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private hasStoragePermission()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 75
    :cond_0
    return v2
.end method


# virtual methods
.method public isLeakStorageWritable()Z
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->hasStoragePermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public leakDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 40
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 42
    .local v1, "downloadsDirectory":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "leakcanary"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 44
    .local v2, "success":Z
    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 48
    :cond_0
    return-object v0
.end method

.method public requestWritePermission()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->hasStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :cond_0
    return-void
.end method
