.class public abstract Lcom/vlife/plugin/module/abs/AbstractPluginLoader;
.super Ljava/lang/Object;
.source "AbstractPluginLoader.java"

# interfaces
.implements Lcom/vlife/plugin/module/IPluginLoader;


# instance fields
.field private final context:Landroid/content/Context;

.field private final log:Lcom/handpet/common/utils/log/ILogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 42
    iput-object p1, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/vlife/plugin/module/abs/AbstractPluginLoader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->context:Landroid/content/Context;

    return-object v0
.end method

.method private findDir(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageManager;Z)V
    .locals 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "module"    # Z

    .prologue
    .line 75
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 76
    .local v6, "files":[Ljava/io/File;
    if-nez v6, :cond_1

    .line 93
    :cond_0
    return-void

    .line 79
    :cond_1
    array-length v9, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, v6, v8

    .line 80
    .local v4, "apkFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 81
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "apkPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v11, "apk:{} length:{}"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const/16 v10, 0x80

    .line 83
    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v10}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 85
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_2

    .line 86
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v7, v1}, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->buildModuleApk(Landroid/content/pm/PackageInfo;Z)V

    .line 79
    .end local v5    # "apkPath":Ljava/lang/String;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->findDir(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageManager;Z)V

    goto :goto_1
.end method

.method private getProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "normal"

    goto :goto_0
.end method


# virtual methods
.method public buildModuleApk(Landroid/content/pm/PackageInfo;Z)V
    .locals 22
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "module"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 108
    .local v9, "packageName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0

    .line 109
    .local v19, "versionCode":I
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getHostName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->getProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 110
    .local v16, "process":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 111
    const-string v4, "com.vlife.plugin.card."

    const-string v8, ""

    invoke-virtual {v9, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "pluginPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->context:Landroid/content/Context;

    const-string v8, "dex"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v8, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v11, "dexDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 115
    new-instance v13, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->context:Landroid/content/Context;

    const-string v8, "lib"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v8, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 116
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v13, "libDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 119
    const-class v3, Landroid/content/res/AssetManager;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/AssetManager;

    .line 120
    .local v7, "assetMag":Landroid/content/res/AssetManager;
    const-class v3, Landroid/content/res/AssetManager;

    .line 121
    const-string v4, "addAssetPath"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Ljava/lang/String;

    aput-object v21, v8, v20

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 122
    .local v14, "method_addAssetPath":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 123
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v8, v3, v4

    .line 122
    invoke-virtual {v14, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 124
    .local v18, "rt":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 125
    .local v17, "resources":Landroid/content/res/Resources;
    const-class v3, Landroid/content/res/Resources;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v8, 0x0

    .line 126
    const-class v20, Landroid/content/res/AssetManager;

    aput-object v20, v4, v8

    const/4 v8, 0x1

    .line 127
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v4, v8

    const/4 v8, 0x2

    .line 128
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v4, v8

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 129
    .local v10, "constructor_Resources":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 130
    aput-object v7, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x2

    .line 131
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    aput-object v8, v3, v4

    .line 130
    invoke-virtual {v10, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    .line 132
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 133
    .local v6, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v4, "[loadAsset][asset={}][res={}][as={}][rt={}]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v7, v8, v20

    const/16 v20, 0x1

    aput-object v5, v8, v20

    const/16 v20, 0x2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    aput-object v21, v8, v20

    const/16 v20, 0x3

    check-cast v18, Ljava/lang/Integer;

    .end local v18    # "rt":Ljava/lang/Object;
    aput-object v18, v8, v20

    invoke-interface {v3, v4, v8}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance v2, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->context:Landroid/content/Context;

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;-><init>(Lcom/vlife/plugin/module/abs/AbstractPluginLoader;Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/AssetManager;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 187
    .local v2, "pluginContex":Landroid/content/Context;
    const-string v3, "com.vlife.plugin.module"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 189
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->addPlugin(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v2    # "pluginContex":Landroid/content/Context;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "theme":Landroid/content/res/Resources$Theme;
    .end local v7    # "assetMag":Landroid/content/res/AssetManager;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "constructor_Resources":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "dexDir":Ljava/io/File;
    .end local v13    # "libDir":Ljava/io/File;
    .end local v14    # "method_addAssetPath":Ljava/lang/reflect/Method;
    .end local v15    # "pluginPath":Ljava/lang/String;
    .end local v16    # "process":Ljava/lang/String;
    .end local v17    # "resources":Landroid/content/res/Resources;
    .end local v19    # "versionCode":I
    :cond_0
    :goto_0
    return-void

    .line 191
    .restart local v9    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 192
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v3, v12}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized copyPlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 24
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 201
    .local v6, "currentTimeMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 202
    const-string v20, "vlife_plugin"

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0xb

    move/from16 v0, v18

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    const/16 v18, 0x4

    .line 201
    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 204
    .local v13, "preferences":Landroid/content/SharedPreferences;
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 205
    .local v15, "ver":Ljava/lang/String;
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getVersionName()Ljava/lang/String;

    move-result-object v16

    .line 207
    .local v16, "version":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "desc":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-eqz v18, :cond_1

    .line 209
    const/16 v18, 0x0

    .line 251
    .end local v5    # "desc":Ljava/lang/String;
    .end local v6    # "currentTimeMillis":J
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    .end local v15    # "ver":Ljava/lang/String;
    .end local v16    # "version":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return v18

    .line 203
    .restart local v6    # "currentTimeMillis":J
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 211
    .restart local v5    # "desc":Ljava/lang/String;
    .restart local v13    # "preferences":Landroid/content/SharedPreferences;
    .restart local v15    # "ver":Ljava/lang/String;
    .restart local v16    # "version":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    .line 213
    .local v12, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 214
    .local v4, "contextWrapper":Landroid/content/Context;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    move-object/from16 v18, v0

    const-string v19, "ModuleFactory.getHostName() = {}"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getHostName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-static {}, Lcom/vlife/plugin/module/tools/ShellProduct;->isShell()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getHostName()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/vlife/plugin/module/tools/ShellProduct;->getCurrentProductHostName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    if-eqz v18, :cond_4

    .line 217
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/vlife/plugin/module/tools/ShellProduct;->getCurrentProductPackageName()Ljava/lang/String;

    move-result-object v19

    .line 218
    const/16 v20, 0x3

    .line 217
    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 225
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    move-object/from16 v18, v0

    const-string v19, "contextWrapper = {}"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v4, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :try_start_4
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "handpet/plugin/"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    .line 238
    :cond_2
    :goto_3
    if-eqz v12, :cond_3

    .line 239
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    move-object/from16 v18, v0

    const-string v19, "copy plugin name:{}"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p2, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".tmp."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 241
    .local v14, "tmp":Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->copyFileTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 242
    invoke-static {v14, v5}, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    move-object/from16 v18, v0

    const-string v19, "length:{}"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    .end local v14    # "tmp":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 247
    .local v10, "endcurrentTimeMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    move-object/from16 v18, v0

    const-string v19, "copyPlugin end time = {}"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sub-long v22, v10, v6

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 219
    .end local v10    # "endcurrentTimeMillis":J
    :catch_0
    move-exception v8

    .line 220
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 249
    .end local v4    # "contextWrapper":Landroid/content/Context;
    .end local v5    # "desc":Ljava/lang/String;
    .end local v6    # "currentTimeMillis":J
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    .end local v15    # "ver":Ljava/lang/String;
    .end local v16    # "version":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 250
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 251
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 223
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "contextWrapper":Landroid/content/Context;
    .restart local v5    # "desc":Ljava/lang/String;
    .restart local v6    # "currentTimeMillis":J
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "preferences":Landroid/content/SharedPreferences;
    .restart local v15    # "ver":Ljava/lang/String;
    .restart local v16    # "version":Ljava/lang/String;
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    goto/16 :goto_2

    .line 228
    :catch_2
    move-exception v8

    .line 229
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v18, ".apk"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v18

    if-eqz v18, :cond_2

    .line 231
    :try_start_8
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x3

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "vlz"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 232
    .local v17, "vlz":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "handpet/plugin/"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v12

    goto/16 :goto_3

    .line 233
    .end local v17    # "vlz":Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 234
    .local v9, "e1":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 200
    .end local v4    # "contextWrapper":Landroid/content/Context;
    .end local v5    # "desc":Ljava/lang/String;
    .end local v6    # "currentTimeMillis":J
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "e1":Ljava/lang/Exception;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    .end local v15    # "ver":Ljava/lang/String;
    .end local v16    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18
.end method

.method public findInstallApk(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "module"    # Z

    .prologue
    const/16 v8, 0x80

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 48
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.vlife.plugin.card"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 51
    .local v6, "resolveinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 64
    return-void

    .line 51
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 54
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 57
    .local v3, "packageName":Ljava/lang/String;
    const/16 v8, 0x80

    .line 56
    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 59
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v2, p2}, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->buildModuleApk(Landroid/content/pm/PackageInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v8, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public findUnInstallApk(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "module"    # Z

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, v0, p3}, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->findDir(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageManager;Z)V

    .line 71
    return-void
.end method
