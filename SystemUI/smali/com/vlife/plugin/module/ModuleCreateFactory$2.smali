.class Lcom/vlife/plugin/module/ModuleCreateFactory$2;
.super Ljava/lang/Object;
.source "ModuleCreateFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlife/plugin/module/ModuleCreateFactory;->deleteOldPlugin(Lcom/vlife/plugin/module/impl/IModulePlugin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$plugin:Lcom/vlife/plugin/module/impl/IModulePlugin;


# direct methods
.method constructor <init>(Lcom/vlife/plugin/module/impl/IModulePlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vlife/plugin/module/ModuleCreateFactory$2;->val$plugin:Lcom/vlife/plugin/module/impl/IModulePlugin;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 138
    iget-object v2, p0, Lcom/vlife/plugin/module/ModuleCreateFactory$2;->val$plugin:Lcom/vlife/plugin/module/impl/IModulePlugin;

    invoke-interface {v2}, Lcom/vlife/plugin/module/impl/IModulePlugin;->getApkPath()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "apkPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 142
    invoke-static {}, Lcom/vlife/plugin/module/ModuleCreateFactory;->access$0()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "[plugin_delete] [path file already delete] [{}]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/vlife/plugin/module/ModuleCreateFactory;->access$0()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "[plugin_delete] [path file is not exist] [{}]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
