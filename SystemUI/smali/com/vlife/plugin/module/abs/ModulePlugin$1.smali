.class Lcom/vlife/plugin/module/abs/ModulePlugin$1;
.super Ldalvik/system/DexClassLoader;
.source "ModulePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlife/plugin/module/abs/ModulePlugin;->buildApplication(Lcom/vlife/plugin/module/IApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private apkFile:Ljava/util/zip/ZipFile;

.field final synthetic this$0:Lcom/vlife/plugin/module/abs/ModulePlugin;


# direct methods
.method constructor <init>(Lcom/vlife/plugin/module/abs/ModulePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # Ljava/lang/String;
    .param p4, "$anonymous2"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->this$0:Lcom/vlife/plugin/module/abs/ModulePlugin;

    .line 68
    invoke-direct {p0, p2, p3, p4, p5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->this$0:Lcom/vlife/plugin/module/abs/ModulePlugin;

    invoke-static {v6}, Lcom/vlife/plugin/module/abs/ModulePlugin;->access$1(Lcom/vlife/plugin/module/abs/ModulePlugin;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "libPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 91
    :try_start_0
    iget-object v5, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->this$0:Lcom/vlife/plugin/module/abs/ModulePlugin;

    invoke-static {v5}, Lcom/vlife/plugin/module/abs/ModulePlugin;->access$0(Lcom/vlife/plugin/module/abs/ModulePlugin;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v5

    const-string v6, "find name:{}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/vlife/plugin/module/abs/ModulePlugin;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "cpuABI":Ljava/lang/String;
    const-string v5, "armeabi"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    const-string v0, "armeabi"

    .line 98
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lib/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "soName":Ljava/lang/String;
    iget-object v5, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->apkFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_1

    .line 101
    new-instance v5, Ljava/util/zip/ZipFile;

    iget-object v6, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->this$0:Lcom/vlife/plugin/module/abs/ModulePlugin;

    invoke-static {v6}, Lcom/vlife/plugin/module/abs/ModulePlugin;->access$2(Lcom/vlife/plugin/module/abs/ModulePlugin;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->apkFile:Ljava/util/zip/ZipFile;

    .line 103
    :cond_1
    iget-object v5, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->apkFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 104
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    iget-object v5, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->this$0:Lcom/vlife/plugin/module/abs/ModulePlugin;

    invoke-static {v5}, Lcom/vlife/plugin/module/abs/ModulePlugin;->access$0(Lcom/vlife/plugin/module/abs/ModulePlugin;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v5

    const-string v6, "findLibary path:{}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    if-eqz v2, :cond_2

    .line 107
    iget-object v5, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->apkFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 106
    invoke-static {v5, v3}, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->copyFileTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "cpuABI":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "soName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->this$0:Lcom/vlife/plugin/module/abs/ModulePlugin;

    invoke-static {v5}, Lcom/vlife/plugin/module/abs/ModulePlugin;->access$0(Lcom/vlife/plugin/module/abs/ModulePlugin;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iget-object v2, p0, Lcom/vlife/plugin/module/abs/ModulePlugin$1;->this$0:Lcom/vlife/plugin/module/abs/ModulePlugin;

    invoke-static {v2}, Lcom/vlife/plugin/module/abs/ModulePlugin;->access$0(Lcom/vlife/plugin/module/abs/ModulePlugin;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "name:{} loader:{}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 82
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 81
    invoke-interface {v2, v3, v4}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-object v0

    .line 78
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method
