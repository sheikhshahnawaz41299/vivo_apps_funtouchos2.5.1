.class Lcom/vlife/plugin/module/abs/ModuleFileUtils;
.super Ljava/lang/Object;
.source "ModuleFileUtils.java"


# static fields
.field private static log:Lcom/handpet/common/utils/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/vlife/plugin/module/abs/ModuleFileUtils;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->log:Lcom/handpet/common/utils/log/ILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFileTo(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 30
    sget-object v4, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v5, "[copy to] [{}]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "desFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->createDir(Ljava/io/File;)Z

    .line 33
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 35
    .local v2, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 36
    .local v3, "realLength":I
    const/16 v4, 0x2800

    :try_start_0
    new-array v0, v4, [B

    .line 37
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 42
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 43
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 45
    return-void

    .line 38
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    .end local v0    # "buffer":[B
    :catchall_0
    move-exception v4

    .line 42
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 43
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 44
    throw v4
.end method

.method public static createDir(Ljava/io/File;)Z
    .locals 9
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, "parentFile":Ljava/io/File;
    if-nez v1, :cond_0

    .line 75
    :goto_0
    return v2

    .line 58
    :cond_0
    sget-object v4, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v5, "parentDir:{} exists:{} canWrite:{}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 58
    invoke-interface {v4, v5, v6}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_1

    .line 63
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 72
    sget-object v4, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v5, "mkdir:{}"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-interface {v4, v5, v3}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v2

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v5, ""

    invoke-interface {v4, v5, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {v1}, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->createDir(Ljava/io/File;)Z

    goto :goto_1

    :cond_3
    move v2, v3

    .line 75
    goto :goto_0
.end method

.method public static readBytesInputStream(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/16 v0, 0x2800

    invoke-static {p0, v0}, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->readBytesInputStream(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readBytesInputStream(Ljava/io/InputStream;I)[B
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    const/4 v3, 0x0

    .line 139
    :goto_0
    return-object v3

    .line 133
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 135
    .local v2, "size":I
    new-array v1, p1, [B

    .line 136
    .local v1, "bs":[B
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 141
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 137
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 140
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bs":[B
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    .line 141
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 142
    throw v3
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 86
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "srcFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "destFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".backup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 93
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->createDir(Ljava/io/File;)Z

    .line 94
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 95
    .local v2, "result":Z
    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 100
    :goto_0
    sget-object v5, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v6, "src:{} rename to dest{} result:{}"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v4

    aput-object p1, v7, v8

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .end local v2    # "result":Z
    :goto_1
    return v2

    .line 98
    .restart local v2    # "result":Z
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .line 103
    .end local v2    # "result":Z
    :cond_2
    sget-object v5, Lcom/vlife/plugin/module/abs/ModuleFileUtils;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v6, "rename failed :{} is not a file"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    .line 104
    goto :goto_1
.end method
