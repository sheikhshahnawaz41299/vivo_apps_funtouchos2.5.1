.class public Lcom/vlife/plugin/module/abs/ModulePlugin;
.super Ljava/lang/Object;
.source "ModulePlugin.java"

# interfaces
.implements Lcom/vlife/plugin/module/impl/IModulePlugin;


# instance fields
.field private final apkPath:Ljava/lang/String;

.field private classLoader:Ljava/lang/ClassLoader;

.field private final className:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final dexDir:Ljava/lang/String;

.field private final libDir:Ljava/lang/String;

.field private log:Lcom/handpet/common/utils/log/ILogger;

.field private module_version:I

.field private module_version_name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "dexDir"    # Ljava/lang/String;
    .param p4, "libDir"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/vlife/plugin/module/abs/ModulePlugin;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 39
    iput-object p1, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->context:Landroid/content/Context;

    .line 40
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->packageName:Ljava/lang/String;

    .line 41
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->className:Ljava/lang/String;

    .line 42
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->apkPath:Ljava/lang/String;

    .line 43
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->module_version:I

    .line 44
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->module_version_name:Ljava/lang/String;

    .line 45
    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->libDir:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->dexDir:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "apkPath:{} className:{}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->apkPath:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->className:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/vlife/plugin/module/abs/ModulePlugin;)Lcom/handpet/common/utils/log/ILogger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->log:Lcom/handpet/common/utils/log/ILogger;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vlife/plugin/module/abs/ModulePlugin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->libDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vlife/plugin/module/abs/ModulePlugin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public static final getCpuAbi()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 147
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 148
    .local v0, "aCPU_ABI":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 150
    .local v1, "aCPU_ABI2":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    const-string v0, "armeabi"

    .line 153
    :cond_1
    const-string v2, "x86_64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 154
    const-string v2, "x86_64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 155
    :cond_2
    const-string v2, "x86_64"

    .line 169
    :goto_0
    return-object v2

    .line 156
    :cond_3
    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 157
    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 158
    :cond_4
    const-string v2, "x86"

    goto :goto_0

    .line 159
    :cond_5
    const-string v2, "arm64-v8a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 160
    const-string v2, "arm64-v8a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 161
    :cond_6
    const-string v2, "arm64-v8a"

    goto :goto_0

    .line 162
    :cond_7
    const-string v2, "armeabi-v7a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 163
    const-string v2, "armeabi-v7a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_9

    .line 164
    :cond_8
    const-string v2, "armeabi-v7a"

    goto :goto_0

    .line 165
    :cond_9
    const-string v2, "mips"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_a

    .line 166
    const-string v2, "mips"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_b

    .line 167
    :cond_a
    const-string v2, "mips"

    goto :goto_0

    .line 169
    :cond_b
    const-string v2, "armeabi"

    goto :goto_0
.end method


# virtual methods
.method public buildApplication(Lcom/vlife/plugin/module/IApplication;)V
    .locals 9
    .param p1, "application"    # Lcom/vlife/plugin/module/IApplication;

    .prologue
    .line 68
    :try_start_0
    new-instance v0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;

    iget-object v2, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->apkPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->dexDir:Ljava/lang/String;

    .line 69
    iget-object v4, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->libDir:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v1, p0

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/vlife/plugin/module/abs/ModulePlugin$1;-><init>(Lcom/vlife/plugin/module/abs/ModulePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 117
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 119
    .local v7, "applicationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vlife/plugin/module/IApplication;

    .line 120
    .local v6, "applicationCall":Lcom/vlife/plugin/module/IApplication;
    iget-object v1, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v2, "build Application"

    invoke-interface {v1, v2}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->context:Landroid/content/Context;

    invoke-interface {v6, v1, p1}, Lcom/vlife/plugin/module/IApplication;->buildApplication(Landroid/content/Context;Lcom/vlife/plugin/module/IApplication;)V

    .line 122
    iput-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->classLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v6    # "applicationCall":Lcom/vlife/plugin/module/IApplication;
    .end local v7    # "applicationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v8

    .line 124
    .local v8, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->log:Lcom/handpet/common/utils/log/ILogger;

    iget-object v2, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->apkPath:Ljava/lang/String;

    invoke-interface {v1, v2, v8}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public module_version()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->module_version:I

    return v0
.end method

.method public module_version_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/ModulePlugin;->module_version_name:Ljava/lang/String;

    return-object v0
.end method
