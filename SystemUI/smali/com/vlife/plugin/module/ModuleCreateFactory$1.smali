.class Lcom/vlife/plugin/module/ModuleCreateFactory$1;
.super Lcom/vlife/plugin/module/abs/AbstractPluginLoader;
.source "ModuleCreateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlife/plugin/module/ModuleCreateFactory;->doCreated(Landroid/content/Context;Lcom/vlife/plugin/module/IApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;-><init>(Landroid/content/Context;)V

    .line 1
    return-void
.end method


# virtual methods
.method public addPlugin(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "dexDir"    # Ljava/lang/String;
    .param p4, "libDir"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 54
    new-instance v1, Lcom/vlife/plugin/module/abs/ModulePlugin;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/vlife/plugin/module/abs/ModulePlugin;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v1, "tempPlugin":Lcom/vlife/plugin/module/abs/ModulePlugin;
    invoke-static {}, Lcom/vlife/plugin/module/ModuleCreateFactory;->getModulePlugin()Lcom/vlife/plugin/module/impl/IModulePlugin;

    move-result-object v0

    .line 58
    .local v0, "modulePlugin":Lcom/vlife/plugin/module/impl/IModulePlugin;
    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/vlife/plugin/module/ModuleCreateFactory;->access$0()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "load module plugin apk:{}"

    new-array v4, v7, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v1}, Lcom/vlife/plugin/module/abs/ModulePlugin;->getApkPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 59
    invoke-interface {v2, v3, v4}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {v1}, Lcom/vlife/plugin/module/ModuleCreateFactory;->setModulePlugin(Lcom/vlife/plugin/module/impl/IModulePlugin;)V

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IModulePlugin;->module_version()I

    move-result v2

    .line 63
    invoke-virtual {v1}, Lcom/vlife/plugin/module/abs/ModulePlugin;->module_version()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 64
    invoke-static {}, Lcom/vlife/plugin/module/ModuleCreateFactory;->access$0()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "load module plugin old path is {}, apk:{}"

    new-array v4, v4, [Ljava/lang/Object;

    .line 65
    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IModulePlugin;->getApkPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/vlife/plugin/module/abs/ModulePlugin;->getApkPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 64
    invoke-interface {v2, v3, v4}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {v0}, Lcom/vlife/plugin/module/ModuleCreateFactory;->access$1(Lcom/vlife/plugin/module/impl/IModulePlugin;)V

    .line 67
    invoke-static {v1}, Lcom/vlife/plugin/module/ModuleCreateFactory;->setModulePlugin(Lcom/vlife/plugin/module/impl/IModulePlugin;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lcom/vlife/plugin/module/ModuleCreateFactory;->access$0()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "load module plugin old path is {}, apk:{}"

    new-array v4, v4, [Ljava/lang/Object;

    .line 71
    invoke-virtual {v1}, Lcom/vlife/plugin/module/abs/ModulePlugin;->getApkPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IModulePlugin;->getApkPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 70
    invoke-interface {v2, v3, v4}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {v1}, Lcom/vlife/plugin/module/ModuleCreateFactory;->access$1(Lcom/vlife/plugin/module/impl/IModulePlugin;)V

    goto :goto_0
.end method
