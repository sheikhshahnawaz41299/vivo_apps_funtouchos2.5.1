.class public final Lcom/squareup/leakcanary/LeakCanary;
.super Ljava/lang/Object;
.source "LeakCanary.java"


# static fields
.field public static final KEY_MEMORY_NO_DEATH:Ljava/lang/String; = "dev.leakcanary.nodeath"

.field public static final KEY_MEMORY_TEST:Ljava/lang/String; = "vivo.leakcanary.test"

.field public static final KEY_MEMORY_TEST2:Ljava/lang/String; = "dev.leakcanary.test"

.field public static final TAG:Ljava/lang/String; = "LeakCanary"

.field public static final VERSION:Ljava/lang/String; = "1.1.7"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static androidWatcher(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump$Listener;Lcom/squareup/leakcanary/ExcludedRefs;)Lcom/squareup/leakcanary/RefWatcher;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "heapDumpListener"    # Lcom/squareup/leakcanary/HeapDump$Listener;
    .param p2, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;

    .prologue
    .line 78
    new-instance v2, Lcom/squareup/leakcanary/AndroidDebuggerControl;

    invoke-direct {v2}, Lcom/squareup/leakcanary/AndroidDebuggerControl;-><init>()V

    .line 79
    .local v2, "debuggerControl":Lcom/squareup/leakcanary/DebuggerControl;
    new-instance v4, Lcom/squareup/leakcanary/AndroidHeapDumper;

    invoke-direct {v4, p0}, Lcom/squareup/leakcanary/AndroidHeapDumper;-><init>(Landroid/content/Context;)V

    .line 80
    .local v4, "heapDumper":Lcom/squareup/leakcanary/AndroidHeapDumper;
    invoke-virtual {v4}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cleanup()V

    .line 81
    new-instance v0, Lcom/squareup/leakcanary/RefWatcher;

    new-instance v1, Lcom/squareup/leakcanary/AndroidWatchExecutor;

    invoke-direct {v1}, Lcom/squareup/leakcanary/AndroidWatchExecutor;-><init>()V

    sget-object v3, Lcom/squareup/leakcanary/GcTrigger;->DEFAULT:Lcom/squareup/leakcanary/GcTrigger;

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/squareup/leakcanary/RefWatcher;-><init>(Ljava/util/concurrent/Executor;Lcom/squareup/leakcanary/DebuggerControl;Lcom/squareup/leakcanary/GcTrigger;Lcom/squareup/leakcanary/HeapDumper;Lcom/squareup/leakcanary/HeapDump$Listener;Lcom/squareup/leakcanary/ExcludedRefs;)V

    return-object v0
.end method

.method public static enableDisplayLeakActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-class v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->setEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 86
    return-void
.end method

.method public static getBooleanSystemProperties(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 162
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 163
    .local v3, "ownerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Class;

    .line 164
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v5

    .line 165
    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v0, v5

    .line 166
    const-string v5, "getBoolean"

    invoke-static {v3, v5, v0}, Lcom/squareup/leakcanary/LeakCanary;->getObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 167
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 172
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "ownerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "result":Z
    :goto_0
    return v4

    .line 168
    .end local v4    # "result":Z
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    move v4, p1

    .line 170
    .restart local v4    # "result":Z
    const-string v5, "LeakCanary"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getBooleanSystemProperties exception, e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/squareup/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs getObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "ownerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 139
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 140
    return-object v0
.end method

.method public static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 147
    .local v3, "ownerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Class;

    .line 148
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v5

    .line 149
    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v5

    .line 150
    const-string v5, "get"

    invoke-static {v3, v5, v0}, Lcom/squareup/leakcanary/LeakCanary;->getObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 151
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "ownerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 152
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    move-object v4, p1

    .line 154
    .restart local v4    # "result":Ljava/lang/String;
    const-string v5, "LeakCanary"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSystemProperties exception, e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/squareup/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;
    .locals 9
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 32
    if-eqz p0, :cond_2

    .line 33
    :try_start_0
    const-string v6, "vivo.leakcanary.test"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/leakcanary/LeakCanary;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 34
    .local v2, "isDebugMemory":Z
    const-string v6, "dev.leakcanary.test"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/leakcanary/LeakCanary;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 35
    .local v3, "isDevMode":Z
    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    .line 36
    :cond_0
    const-string v6, "LeakCanary"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Application="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", leakcanary VERSION:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "1.1.7"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/squareup/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 39
    .local v0, "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 40
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 41
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 42
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 43
    const-string v6, "ro.monkey"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/squareup/leakcanary/LeakCanary;->getBooleanSystemProperties(Ljava/lang/String;Z)Z

    move-result v4

    .line 44
    .local v4, "noNeedDeath":Z
    const-string v6, "dev.leakcanary.nodeath"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/leakcanary/LeakCanary;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 45
    .local v5, "noNeedDeath2":Z
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 48
    :cond_1
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v6

    invoke-static {v6}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 50
    const-class v6, Lcom/squareup/leakcanary/DisplayLeakService;

    .line 51
    invoke-static {}, Lcom/squareup/leakcanary/AndroidExcludedRefs;->createAppDefaults()Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->build()Lcom/squareup/leakcanary/ExcludedRefs;

    move-result-object v7

    .line 50
    invoke-static {p0, v6, v7}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;Ljava/lang/Class;Lcom/squareup/leakcanary/ExcludedRefs;)Lcom/squareup/leakcanary/RefWatcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 58
    .end local v0    # "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    .end local v2    # "isDebugMemory":Z
    .end local v3    # "isDevMode":Z
    .end local v4    # "noNeedDeath":Z
    .end local v5    # "noNeedDeath2":Z
    :goto_0
    return-object v6

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v6, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    goto :goto_0
.end method

.method public static install(Landroid/app/Application;Ljava/lang/Class;Lcom/squareup/leakcanary/ExcludedRefs;)Lcom/squareup/leakcanary/RefWatcher;
    .locals 5
    .param p0, "application"    # Landroid/app/Application;
    .param p2, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/leakcanary/AbstractAnalysisResultService;",
            ">;",
            "Lcom/squareup/leakcanary/ExcludedRefs;",
            ")",
            "Lcom/squareup/leakcanary/RefWatcher;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "listenerServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/squareup/leakcanary/AbstractAnalysisResultService;>;"
    const-string v3, "vivo.leakcanary.test"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/squareup/leakcanary/LeakCanary;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 63
    .local v1, "isDebugMemory":Z
    if-nez v1, :cond_0

    .line 64
    sget-object v2, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    .line 74
    :goto_0
    return-object v2

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->isInAnalyzerProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    sget-object v2, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->enableDisplayLeakActivity(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/squareup/leakcanary/ServiceHeapDumpListener;

    invoke-direct {v0, p0, p1}, Lcom/squareup/leakcanary/ServiceHeapDumpListener;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "heapDumpListener":Lcom/squareup/leakcanary/HeapDump$Listener;
    invoke-static {p0, v0, p2}, Lcom/squareup/leakcanary/LeakCanary;->androidWatcher(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump$Listener;Lcom/squareup/leakcanary/ExcludedRefs;)Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v2

    .line 73
    .local v2, "refWatcher":Lcom/squareup/leakcanary/RefWatcher;
    invoke-static {p0, v2}, Lcom/squareup/leakcanary/ActivityRefWatcher;->installOnIcsPlus(Landroid/app/Application;Lcom/squareup/leakcanary/RefWatcher;)V

    goto :goto_0
.end method

.method public static isInAnalyzerProcess(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-class v0, Lcom/squareup/leakcanary/internal/HeapAnalyzerService;

    invoke-static {p0, v0}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->isInServiceProcess(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static leakInfo(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Z)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;
    .param p3, "detailed"    # Z

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 90
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 98
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 99
    .local v7, "versionName":Ljava/lang/String;
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 100
    .local v6, "versionCode":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "In "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "info":Ljava/lang/String;
    const-string v0, ""

    .line 102
    .local v0, "detailedString":Ljava/lang/String;
    iget-boolean v8, p2, Lcom/squareup/leakcanary/AnalysisResult;->leakFound:Z

    if-eqz v8, :cond_4

    .line 103
    iget-boolean v8, p2, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    if-eqz v8, :cond_0

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "* LEAK CAN BE IGNORED.\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "* "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-object v8, p1, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " has leaked:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/squareup/leakcanary/AnalysisResult;->leakTrace:Lcom/squareup/leakcanary/LeakTrace;

    invoke-virtual {v9}, Lcom/squareup/leakcanary/LeakTrace;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    if-eqz p3, :cond_2

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\n* Details:\n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p2, Lcom/squareup/leakcanary/AnalysisResult;->leakTrace:Lcom/squareup/leakcanary/LeakTrace;

    invoke-virtual {v9}, Lcom/squareup/leakcanary/LeakTrace;->toDetailedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "* Excluded Refs:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/squareup/leakcanary/HeapDump;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "* Reference Key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "* Device: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "* Android Version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " API: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LeakCanary: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "* Durations: watch="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/squareup/leakcanary/HeapDump;->watchDurationMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms, gc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/squareup/leakcanary/HeapDump;->gcDurationMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms, heap dump="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpDurationMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms, analysis="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p2, Lcom/squareup/leakcanary/AnalysisResult;->analysisDurationMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    return-object v2

    .line 95
    .end local v0    # "detailedString":Ljava/lang/String;
    .end local v2    # "info":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "versionCode":I
    .end local v7    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 115
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "detailedString":Ljava/lang/String;
    .restart local v2    # "info":Ljava/lang/String;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "versionCode":I
    .restart local v7    # "versionName":Ljava/lang/String;
    :cond_4
    iget-object v8, p2, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-eqz v8, :cond_5

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "* FAILURE:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-static {v9}, Lcom/squareup/utils/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    goto/16 :goto_0

    .line 119
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "* NO LEAK FOUND.\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
