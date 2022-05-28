.class public Lcom/vlife/plugin/module/ModuleCreateFactory;
.super Lcom/vlife/plugin/module/ModuleFactory;
.source "ModuleCreateFactory.java"


# static fields
.field private static final PLUGIN_DELETE_DELAY_TIME:I = 0xbb8

.field private static ht:Landroid/os/HandlerThread;

.field private static log:Lcom/handpet/common/utils/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/vlife/plugin/module/ModuleCreateFactory;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/vlife/plugin/module/ModuleCreateFactory;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vlife/plugin/module/ModuleFactory;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/handpet/common/utils/log/ILogger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vlife/plugin/module/ModuleCreateFactory;->log:Lcom/handpet/common/utils/log/ILogger;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vlife/plugin/module/impl/IModulePlugin;)V
    .locals 0

    .prologue
    .line 131
    invoke-static {p0}, Lcom/vlife/plugin/module/ModuleCreateFactory;->deleteOldPlugin(Lcom/vlife/plugin/module/impl/IModulePlugin;)V

    return-void
.end method

.method private static deleteOldPlugin(Lcom/vlife/plugin/module/impl/IModulePlugin;)V
    .locals 4
    .param p0, "plugin"    # Lcom/vlife/plugin/module/impl/IModulePlugin;

    .prologue
    .line 132
    invoke-static {}, Lcom/vlife/plugin/module/ModuleCreateFactory;->initHandlerThread()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/vlife/plugin/module/ModuleCreateFactory;->ht:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 134
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/vlife/plugin/module/ModuleCreateFactory$2;

    invoke-direct {v1, p0}, Lcom/vlife/plugin/module/ModuleCreateFactory$2;-><init>(Lcom/vlife/plugin/module/impl/IModulePlugin;)V

    .line 147
    const-wide/16 v2, 0xbb8

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method

.method public static declared-synchronized doCreated(Landroid/content/Context;Lcom/vlife/plugin/module/IApplication;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "application"    # Lcom/vlife/plugin/module/IApplication;

    .prologue
    .line 47
    const-class v12, Lcom/vlife/plugin/module/ModuleCreateFactory;

    monitor-enter v12

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/vlife/plugin/module/ModuleCreateFactory;->initModule(Landroid/content/Context;)V

    .line 48
    invoke-interface/range {p1 .. p1}, Lcom/vlife/plugin/module/IApplication;->initModule()V

    .line 49
    new-instance v8, Lcom/vlife/plugin/module/ModuleCreateFactory$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/vlife/plugin/module/ModuleCreateFactory$1;-><init>(Landroid/content/Context;)V

    .line 77
    .local v8, "pluginLoader":Lcom/vlife/plugin/module/IPluginLoader;
    const-string v13, "vlife_plugin"

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xb

    if-lt v11, v14, :cond_3

    const/4 v11, 0x4

    .line 76
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 80
    .local v10, "preferences":Landroid/content/SharedPreferences;
    const-string v11, "com.vlife.plugin.module"

    const/4 v13, 0x0

    .line 79
    invoke-interface {v10, v11, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "current_module_path":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/data/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/plugin/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 81
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "dir":Ljava/lang/String;
    const-string v11, "vlife-sdk-module.apk"

    invoke-interface {v8, v4, v11}, Lcom/vlife/plugin/module/IPluginLoader;->copyPlugin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 90
    .local v2, "copy":Z
    if-eqz v3, :cond_0

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/32 v16, 0x1d4c0

    cmp-long v11, v14, v16

    if-ltz v11, :cond_0

    if-eqz v2, :cond_4

    .line 92
    :cond_0
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-interface {v8, v0, v11}, Lcom/vlife/plugin/module/IPluginLoader;->findInstallApk(Landroid/content/Context;Z)V

    .line 93
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-interface {v8, v0, v4, v11}, Lcom/vlife/plugin/module/IPluginLoader;->findUnInstallApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 94
    invoke-static {}, Lcom/vlife/plugin/module/ModuleCreateFactory;->getModulePlugin()Lcom/vlife/plugin/module/impl/IModulePlugin;

    move-result-object v6

    .line 95
    .local v6, "modulePlugin":Lcom/vlife/plugin/module/impl/IModulePlugin;
    if-eqz v6, :cond_1

    .line 96
    invoke-interface {v6}, Lcom/vlife/plugin/module/impl/IModulePlugin;->getApkPath()Ljava/lang/String;

    move-result-object v3

    .line 97
    const-string v11, "/data/app"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 98
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 99
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6}, Lcom/vlife/plugin/module/impl/IModulePlugin;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "modulePlugin":Lcom/vlife/plugin/module/impl/IModulePlugin;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/vlife/plugin/module/ModuleCreateFactory;->getModulePlugin()Lcom/vlife/plugin/module/impl/IModulePlugin;

    move-result-object v6

    .line 115
    .restart local v6    # "modulePlugin":Lcom/vlife/plugin/module/impl/IModulePlugin;
    if-eqz v6, :cond_2

    .line 116
    move-object/from16 v0, p1

    invoke-interface {v6, v0}, Lcom/vlife/plugin/module/impl/IModulePlugin;->buildApplication(Lcom/vlife/plugin/module/IApplication;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_2
    monitor-exit v12

    return-void

    .line 78
    .end local v2    # "copy":Z
    .end local v3    # "current_module_path":Ljava/lang/String;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v6    # "modulePlugin":Lcom/vlife/plugin/module/impl/IModulePlugin;
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 105
    .restart local v2    # "copy":Z
    .restart local v3    # "current_module_path":Ljava/lang/String;
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v10    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 107
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/16 v11, 0x80

    .line 106
    invoke-virtual {v9, v3, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 108
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_1

    .line 109
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 110
    const/4 v11, 0x1

    invoke-interface {v8, v7, v11}, Lcom/vlife/plugin/module/IPluginLoader;->buildModuleApk(Landroid/content/pm/PackageInfo;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 47
    .end local v2    # "copy":Z
    .end local v3    # "current_module_path":Ljava/lang/String;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "pluginLoader":Lcom/vlife/plugin/module/IPluginLoader;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11
.end method

.method private static initHandlerThread()V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/vlife/plugin/module/ModuleCreateFactory;->ht:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vlife/plugin/module/ModuleCreateFactory;->ht:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "plugin_update"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vlife/plugin/module/ModuleCreateFactory;->ht:Landroid/os/HandlerThread;

    .line 123
    sget-object v0, Lcom/vlife/plugin/module/ModuleCreateFactory;->ht:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 125
    :cond_1
    return-void
.end method

.method public static declared-synchronized sdkInit(Landroid/content/Context;Lcom/vlife/plugin/module/IApplication;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "application"    # Lcom/vlife/plugin/module/IApplication;

    .prologue
    .line 35
    const-class v2, Lcom/vlife/plugin/module/ModuleCreateFactory;

    monitor-enter v2

    :try_start_0
    const-string v1, "PLUGINDOWNLOAD"

    const-string v3, "sdkInit invoke"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {p0}, Lcom/vlife/plugin/module/ModuleCreateFactory;->initModule(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "curProcessName":Ljava/lang/String;
    const-string v1, ":wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const-string v1, ":lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const-string v1, ":main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/vlife/plugin/module/ModuleCreateFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/vlife/plugin/module/ModuleCreateFactory;->doCreated(Landroid/content/Context;Lcom/vlife/plugin/module/IApplication;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    monitor-exit v2

    return-void

    .line 35
    .end local v0    # "curProcessName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
