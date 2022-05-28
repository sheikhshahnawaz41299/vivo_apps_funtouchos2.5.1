.class public Lcom/vivo/settings/VivoAccessibilityUtils;
.super Ljava/lang/Object;
.source "VivoAccessibilityUtils.java"


# static fields
.field private static final CHANGEABLELIST_FILE_PATH:Ljava/lang/String; = "/data/bbkcore/changeable_accessibility_list_server.xml"

.field private static final TAG:Ljava/lang/String; = "VivoAccessibilityUtils"

.field private static mInstance:Lcom/vivo/settings/VivoAccessibilityUtils;


# instance fields
.field private mChangeableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/VivoAccessibilityUtils;->mChangeableList:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0}, Lcom/vivo/settings/VivoAccessibilityUtils;->initData()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/vivo/settings/VivoAccessibilityUtils;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/vivo/settings/VivoAccessibilityUtils;->mInstance:Lcom/vivo/settings/VivoAccessibilityUtils;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/vivo/settings/VivoAccessibilityUtils;

    invoke-direct {v0}, Lcom/vivo/settings/VivoAccessibilityUtils;-><init>()V

    sput-object v0, Lcom/vivo/settings/VivoAccessibilityUtils;->mInstance:Lcom/vivo/settings/VivoAccessibilityUtils;

    .line 24
    :cond_0
    sget-object v0, Lcom/vivo/settings/VivoAccessibilityUtils;->mInstance:Lcom/vivo/settings/VivoAccessibilityUtils;

    return-object v0
.end method

.method private readChangeableList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "srcPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "dstList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v9, "srcFile":Ljava/io/File;
    if-nez p2, :cond_1

    .line 43
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "dstList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .restart local p2    # "dstList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const-string v10, "VivoAccessibilityUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readChangeableList, srcFile.exists() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 50
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chmod 666 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 53
    .local v8, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v8, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 95
    .end local v2    # "command":Ljava/lang/String;
    .end local v8    # "runtime":Ljava/lang/Runtime;
    :cond_0
    :goto_1
    return-void

    .line 45
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 55
    :catch_0
    move-exception v10

    .line 58
    :cond_2
    const/4 v4, 0x0

    .line 59
    .local v4, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 61
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v5, "fileReader":Ljava/io/FileReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "pkg":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_4

    .line 66
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 67
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v10, "VivoAccessibilityUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readChangeableList add pkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 73
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    const/4 v0, 0x0

    .line 75
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 76
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :try_start_4
    const-string v10, "VivoAccessibilityUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dstList.size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    const/4 v0, 0x0

    .line 92
    :cond_5
    if-eqz v4, :cond_0

    .line 93
    const/4 v4, 0x0

    goto :goto_1

    .line 77
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 79
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v0, :cond_6

    .line 80
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 82
    :cond_6
    if-eqz v4, :cond_7

    .line 83
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    :cond_7
    :goto_4
    :try_start_6
    const-string v10, "VivoAccessibilityUtils"

    const-string v11, "readNotificationChangeableList:"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 90
    if-eqz v0, :cond_8

    .line 91
    const/4 v0, 0x0

    .line 92
    :cond_8
    if-eqz v4, :cond_0

    .line 93
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 90
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v0, :cond_9

    .line 91
    const/4 v0, 0x0

    .line 92
    :cond_9
    if-eqz v4, :cond_a

    .line 93
    const/4 v4, 0x0

    :cond_a
    throw v10

    .line 90
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 85
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_4

    .line 77
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_3
.end method


# virtual methods
.method public getChangeableList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vivo/settings/VivoAccessibilityUtils;->mChangeableList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "VivoAccessibilityUtils"

    const-string v1, "initData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v0, "/data/bbkcore/changeable_accessibility_list_server.xml"

    iget-object v1, p0, Lcom/vivo/settings/VivoAccessibilityUtils;->mChangeableList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/vivo/settings/VivoAccessibilityUtils;->readChangeableList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 34
    return-void
.end method

.method public isAccessibilityEnable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vivo/settings/VivoAccessibilityUtils;->mChangeableList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
