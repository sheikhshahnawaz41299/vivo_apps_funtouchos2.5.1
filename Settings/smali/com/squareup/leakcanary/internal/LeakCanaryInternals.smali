.class public final Lcom/squareup/leakcanary/internal/LeakCanaryInternals;
.super Ljava/lang/Object;
.source "LeakCanaryInternals.java"


# static fields
.field public static final LG:Ljava/lang/String; = "LGE"

.field public static final LOLLIPOP_MR1:I = 0x16

.field public static final MOTOROLA:Ljava/lang/String; = "motorola"

.field public static final NVIDIA:Ljava/lang/String; = "NVIDIA"

.field public static final SAMSUNG:Ljava/lang/String; = "samsung"

.field private static final fileIoExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->fileIoExecutor:Ljava/util/concurrent/Executor;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static classSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 76
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 77
    .local v0, "separator":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    .end local p0    # "className":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static detectedLeakDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->storageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "detected_leaks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 51
    return-object v0
.end method

.method public static executeOnFileIoThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    sget-object v0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->fileIoExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public static findNextAvailableHprofFile(I)Ljava/io/File;
    .locals 6
    .param p0, "maxFiles"    # I

    .prologue
    .line 64
    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->detectedLeakDirectory()Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, "directory":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, p0, :cond_1

    .line 72
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 66
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "heap_dump_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".hprof"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "heapDumpName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isInServiceProcess(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 100
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 106
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 107
    .local v4, "mainProcess":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v1, "component":Landroid/content/ComponentName;
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v8, v1, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 115
    .local v10, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v11, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 116
    const-string v11, "AndroidUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Did not expect service "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to run in main process "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v11, 0x0

    .line 132
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v4    # "mainProcess":Ljava/lang/String;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_0
    return v11

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "AndroidUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Could not get package info for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/4 v11, 0x0

    goto :goto_0

    .line 112
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v4    # "mainProcess":Ljava/lang/String;
    .restart local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v3

    .line 113
    .local v3, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v11, 0x0

    goto :goto_0

    .line 119
    .end local v3    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 120
    .local v5, "myPid":I
    const-string v11, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 121
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v6, 0x0

    .line 122
    .local v6, "myProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 128
    :goto_1
    if-nez v6, :cond_3

    .line 129
    const-string v11, "AndroidUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Could not find running process for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v11, 0x0

    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 123
    .local v9, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v12, v5, :cond_1

    .line 124
    move-object v6, v9

    .line 125
    goto :goto_1

    .line 132
    .end local v9    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    iget-object v11, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_0
.end method

.method public static leakResultFile(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "heapdumpFile"    # Ljava/io/File;

    .prologue
    .line 55
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;-><init>(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {v1}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->executeOnFileIoThread(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public static storageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 42
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, "downloadsDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "leakcanary"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v1, "leakCanaryDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 45
    return-object v1
.end method
