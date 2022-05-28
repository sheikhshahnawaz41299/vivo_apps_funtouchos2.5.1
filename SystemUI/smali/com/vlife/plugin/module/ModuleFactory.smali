.class public Lcom/vlife/plugin/module/ModuleFactory;
.super Ljava/lang/Object;
.source "ModuleFactory.java"


# static fields
.field private static final RES_MODULE:Lcom/vlife/plugin/module/IResModule;

.field private static emptyModule:Lcom/vlife/plugin/module/EmptyModule;

.field private static host:Ljava/lang/String;

.field private static log:Lcom/handpet/common/utils/log/ILogger;

.field private static mContext:Landroid/content/Context;

.field private static moduleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vlife/plugin/module/IModule;",
            ">;"
        }
    .end annotation
.end field

.field private static moduleMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vlife/plugin/module/IModule;",
            ">;"
        }
    .end annotation
.end field

.field private static modulePlugin:Lcom/vlife/plugin/module/impl/IModulePlugin;

.field private static plugin:Lcom/vlife/plugin/card/impl/IPlugin;

.field private static product_name:Ljava/lang/String;

.field private static product_type:Ljava/lang/String;

.field private static release_type:Ljava/lang/String;

.field private static statusModule:Lcom/vlife/plugin/module/IStatusModule;

.field private static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vlife/plugin/module/ModuleFactory;->moduleMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vlife/plugin/module/ModuleFactory;->moduleList:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/vlife/plugin/module/EmptyModule;

    invoke-direct {v0}, Lcom/vlife/plugin/module/EmptyModule;-><init>()V

    sput-object v0, Lcom/vlife/plugin/module/ModuleFactory;->emptyModule:Lcom/vlife/plugin/module/EmptyModule;

    .line 43
    const-class v0, Lcom/vlife/plugin/module/ModuleFactory;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/vlife/plugin/module/ModuleFactory;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 46
    new-instance v0, Lcom/vlife/plugin/module/ModuleFactory$1;

    invoke-direct {v0}, Lcom/vlife/plugin/module/ModuleFactory$1;-><init>()V

    sput-object v0, Lcom/vlife/plugin/module/ModuleFactory;->statusModule:Lcom/vlife/plugin/module/IStatusModule;

    .line 78
    new-instance v0, Lcom/vlife/plugin/module/ModuleFactory$2;

    invoke-direct {v0}, Lcom/vlife/plugin/module/ModuleFactory$2;-><init>()V

    sput-object v0, Lcom/vlife/plugin/module/ModuleFactory;->RES_MODULE:Lcom/vlife/plugin/module/IResModule;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->product_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2()Lcom/handpet/common/utils/log/ILogger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->log:Lcom/handpet/common/utils/log/ILogger;

    return-object v0
.end method

.method public static getAbsoluteModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;
    .locals 1
    .param p0, "module_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vlife/plugin/module/IModule;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 241
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->moduleMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/module/IModule;

    return-object v0
.end method

.method public static getAlimamaModule()Lcom/vlife/plugin/module/IAlimamaModule;
    .locals 1

    .prologue
    .line 307
    const-string v0, "alimama"

    invoke-static {v0}, Lcom/vlife/plugin/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/module/IAlimamaModule;

    return-object v0
.end method

.method public static getCashSlideModule()Lcom/vlife/plugin/module/ICashSlideModule;
    .locals 1

    .prologue
    .line 303
    const-string v0, "cashSlide"

    invoke-static {v0}, Lcom/vlife/plugin/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/module/ICashSlideModule;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "big_error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->host:Ljava/lang/String;

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static getLockScreenModule()Lcom/vlife/plugin/module/ILockScreenModule;
    .locals 1

    .prologue
    .line 291
    const-string v0, "lockscreen"

    invoke-static {v0}, Lcom/vlife/plugin/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/module/ILockScreenModule;

    return-object v0
.end method

.method public static getMainProcessModule()Lcom/vlife/plugin/module/IMainProcessModule;
    .locals 1

    .prologue
    .line 311
    const-string v0, "main_process"

    invoke-static {v0}, Lcom/vlife/plugin/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/module/IMainProcessModule;

    return-object v0
.end method

.method private static getModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;
    .locals 6
    .param p0, "module_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vlife/plugin/module/IModule;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p0}, Lcom/vlife/plugin/module/ModuleFactory;->getAbsoluteModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;

    move-result-object v0

    .line 252
    .local v0, "t":Lcom/vlife/plugin/module/IModule;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vlife/plugin/module/IModule;->isExist()Z

    move-result v1

    if-nez v1, :cond_2

    .line 253
    :cond_0
    if-eqz v0, :cond_1

    .line 254
    sget-object v1, Lcom/vlife/plugin/module/ModuleFactory;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v2, "module:{} exist:{}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-interface {v0}, Lcom/vlife/plugin/module/IModule;->isExist()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_1
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->emptyModule:Lcom/vlife/plugin/module/EmptyModule;

    .line 258
    .end local v0    # "t":Lcom/vlife/plugin/module/IModule;, "TT;"
    :cond_2
    return-object v0
.end method

.method public static getModulePlugin()Lcom/vlife/plugin/module/impl/IModulePlugin;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->modulePlugin:Lcom/vlife/plugin/module/impl/IModulePlugin;

    return-object v0
.end method

.method public static getModulelist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vlife/plugin/module/IModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->moduleList:Ljava/util/List;

    return-object v0
.end method

.method public static getPetServiceModule()Lcom/vlife/plugin/module/IPetServiceModule;
    .locals 1

    .prologue
    .line 315
    const-string v0, "pet_service"

    invoke-static {v0}, Lcom/vlife/plugin/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/module/IPetServiceModule;

    return-object v0
.end method

.method public static getPlugin()Lcom/vlife/plugin/card/impl/IPlugin;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->plugin:Lcom/vlife/plugin/card/impl/IPlugin;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->plugin:Lcom/vlife/plugin/card/impl/IPlugin;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/vlife/plugin/card/impl/event/EventService;->getPlugin()Lcom/vlife/plugin/card/impl/IPlugin;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProduct_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->product_name:Ljava/lang/String;

    return-object v0
.end method

.method public static getProduct_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->product_type:Ljava/lang/String;

    return-object v0
.end method

.method public static getRelease_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->release_type:Ljava/lang/String;

    return-object v0
.end method

.method public static getResModule()Lcom/vlife/plugin/module/IResModule;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->RES_MODULE:Lcom/vlife/plugin/module/IResModule;

    return-object v0
.end method

.method public static getStatusModule()Lcom/vlife/plugin/module/IStatusModule;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->statusModule:Lcom/vlife/plugin/module/IStatusModule;

    return-object v0
.end method

.method public static getSuicideManagerModule()Lcom/vlife/plugin/module/ISuicideManagerModule;
    .locals 1

    .prologue
    .line 287
    const-string v0, "suicide_manager"

    invoke-static {v0}, Lcom/vlife/plugin/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/module/ISuicideManagerModule;

    return-object v0
.end method

.method public static getTaskServiceModule()Lcom/vlife/plugin/module/ITaskServiceModule;
    .locals 1

    .prologue
    .line 299
    const-string v0, "task_service"

    invoke-static {v0}, Lcom/vlife/plugin/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/module/ITaskServiceModule;

    return-object v0
.end method

.method public static getUIModule()Lcom/vlife/plugin/module/IUIModule;
    .locals 1

    .prologue
    .line 295
    const-string v0, "ui"

    invoke-static {v0}, Lcom/vlife/plugin/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/module/IUIModule;

    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getWallpaperModule()Lcom/vlife/plugin/module/IWallpaperModule;
    .locals 1

    .prologue
    .line 283
    const-string v0, "wallpaper"

    invoke-static {v0}, Lcom/vlife/plugin/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/vlife/plugin/module/IModule;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/module/IWallpaperModule;

    return-object v0
.end method

.method public static declared-synchronized initModule(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const-class v7, Lcom/vlife/plugin/module/ModuleFactory;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/vlife/plugin/module/ModuleFactory;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 184
    sput-object p0, Lcom/vlife/plugin/module/ModuleFactory;->mContext:Landroid/content/Context;

    .line 186
    :cond_0
    sget-object v6, Lcom/vlife/plugin/module/ModuleFactory;->host:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 187
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 189
    .local v5, "pid":I
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 188
    check-cast v3, Landroid/app/ActivityManager;

    .line 190
    .local v3, "mActivityManager":Landroid/app/ActivityManager;
    const-string v6, "unknown"

    sput-object v6, Lcom/vlife/plugin/module/ModuleFactory;->host:Ljava/lang/String;

    .line 192
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 191
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 200
    .end local v3    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v5    # "pid":I
    :cond_2
    :goto_0
    sget-object v6, Lcom/vlife/plugin/module/ModuleFactory;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_3

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_1
    sget-object v6, Lcom/vlife/plugin/module/ModuleFactory;->host:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/vlife/plugin/module/tools/ShellProduct;->isShell()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/vlife/plugin/module/tools/ShellProduct;->getCurrentProductHostName()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/vlife/plugin/module/ModuleFactory;->host:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 204
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Lcom/vlife/plugin/module/tools/ShellProduct;->getCurrentProductPackageName()Ljava/lang/String;

    move-result-object v8

    .line 205
    const/16 v9, 0x1080

    .line 204
    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 210
    :goto_1
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v6, Lcom/vlife/plugin/module/ModuleFactory;->versionName:Ljava/lang/String;

    .line 212
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 213
    .local v4, "metaData":Landroid/os/Bundle;
    const-string v6, "PLUGINDOWNLOAD"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "initModule invoke metaData:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v4, :cond_3

    .line 216
    const-string v6, "product_type"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    sput-object v6, Lcom/vlife/plugin/module/ModuleFactory;->product_type:Ljava/lang/String;

    .line 218
    const-string v6, "product_name"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 217
    sput-object v6, Lcom/vlife/plugin/module/ModuleFactory;->product_name:Ljava/lang/String;

    .line 220
    const-string v6, "release_type"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    sput-object v6, Lcom/vlife/plugin/module/ModuleFactory;->release_type:Ljava/lang/String;

    .line 221
    const-string v6, "PLUGINDOWNLOAD"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "initModule invoke product_type:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/vlife/plugin/module/ModuleFactory;->product_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "metaData":Landroid/os/Bundle;
    :cond_3
    :goto_2
    monitor-exit v7

    return-void

    .line 192
    .restart local v3    # "mActivityManager":Landroid/app/ActivityManager;
    .restart local v5    # "pid":I
    :cond_4
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 193
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, v5, :cond_1

    .line 194
    sget-object v6, Lcom/vlife/plugin/module/ModuleFactory;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v8, "curProcessName={}"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v6, v8, v9}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v6, Lcom/vlife/plugin/module/ModuleFactory;->host:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 183
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v5    # "pid":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 207
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_5
    :try_start_3
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 208
    const/16 v9, 0x1080

    .line 207
    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto/16 :goto_1

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    sget-object v6, Lcom/vlife/plugin/module/ModuleFactory;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v6, v1}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public static initModule(Lcom/vlife/plugin/module/IModule;)V
    .locals 5
    .param p0, "module"    # Lcom/vlife/plugin/module/IModule;

    .prologue
    .line 245
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->moduleMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0}, Lcom/vlife/plugin/module/IModule;->module()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/vlife/plugin/module/ModuleFactory;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "put module name:{} {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0}, Lcom/vlife/plugin/module/IModule;->module()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public static setModulePlugin(Lcom/vlife/plugin/module/impl/IModulePlugin;)V
    .locals 0
    .param p0, "modulePlugin"    # Lcom/vlife/plugin/module/impl/IModulePlugin;

    .prologue
    .line 174
    sput-object p0, Lcom/vlife/plugin/module/ModuleFactory;->modulePlugin:Lcom/vlife/plugin/module/impl/IModulePlugin;

    .line 175
    return-void
.end method

.method public static setPlugin(Lcom/vlife/plugin/card/impl/IPlugin;)V
    .locals 0
    .param p0, "plugin"    # Lcom/vlife/plugin/card/impl/IPlugin;

    .prologue
    .line 166
    sput-object p0, Lcom/vlife/plugin/module/ModuleFactory;->plugin:Lcom/vlife/plugin/card/impl/IPlugin;

    .line 167
    return-void
.end method

.method public static setStatus(Lcom/vlife/plugin/module/IStatusModule;)V
    .locals 0
    .param p0, "status"    # Lcom/vlife/plugin/module/IStatusModule;

    .prologue
    .line 136
    if-eqz p0, :cond_0

    .line 137
    sput-object p0, Lcom/vlife/plugin/module/ModuleFactory;->statusModule:Lcom/vlife/plugin/module/IStatusModule;

    .line 139
    :cond_0
    return-void
.end method
