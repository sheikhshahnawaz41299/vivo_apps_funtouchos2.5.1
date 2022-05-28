.class public final Lcom/android/systemui/vivo/common/notification/FileParser;
.super Ljava/lang/Object;
.source "FileParser.java"


# static fields
.field public static final CHANGEABLELIST_FILE_PATH:Ljava/lang/String; = "/data/bbkcore/changeable_shield_list_server.xml"

.field public static final CHANGEABLELIST_IDENTIFIER:Ljava/lang/String; = "Notification"

.field public static final CONFIG_TYPE:Ljava/lang/String; = "1"

.field public static final DATABASE_URI:Ljava/lang/String; = "content://com.vivo.daemonservice.unifiedconfigprovider/configs"

.field public static final DESKTOP_APPICON_IDENTIFIER:Ljava/lang/String; = "DesktopIcon"

.field public static final DESKTOP_APPICON_LIST_FILE_PATH:Ljava/lang/String; = "/data/bbkcore/desktop_app_icon_badged_list_server.xml"

.field public static final ENGINE_VERSION:Ljava/lang/String; = "1.0.0"

.field public static final MODULE_NAME:Ljava/lang/String; = "StatusBar"

.field private static final TAG:Ljava/lang/String; = "FileParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 210
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const/4 v2, 0x1

    aput-object p3, v5, v2

    const/4 v2, 0x2

    aput-object p4, v5, v2

    const/4 v2, 0x3

    aput-object p5, v5, v2

    .line 211
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 213
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 214
    const-string v2, "FileParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    if-eqz v7, :cond_5

    .line 216
    const-string v10, ""

    .local v10, "fileId":Ljava/lang/String;
    const-string v12, ""

    .local v12, "targetIdentifier":Ljava/lang/String;
    const-string v11, ""

    .line 217
    .local v11, "fileVersion":Ljava/lang/String;
    const/4 v9, 0x0

    .line 218
    .local v9, "fileContent":[B
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 219
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 220
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 221
    const-string v2, "id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 222
    const-string v2, "identifier"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 223
    const-string v2, "fileversion"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 224
    const-string v2, "filecontent"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 226
    const-string v2, "FileParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfig >>> fileId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fileVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " targetIdentifier = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    invoke-static {v9}, Lcom/android/systemui/vivo/common/notification/FileParser;->readStringData([B)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 245
    if-eqz v7, :cond_0

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v9    # "fileContent":[B
    .end local v10    # "fileId":Ljava/lang/String;
    .end local v11    # "fileVersion":Ljava/lang/String;
    .end local v12    # "targetIdentifier":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 233
    .restart local v9    # "fileContent":[B
    .restart local v10    # "fileId":Ljava/lang/String;
    .restart local v11    # "fileVersion":Ljava/lang/String;
    .restart local v12    # "targetIdentifier":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    .end local v9    # "fileContent":[B
    .end local v10    # "fileId":Ljava/lang/String;
    .end local v11    # "fileVersion":Ljava/lang/String;
    .end local v12    # "targetIdentifier":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 242
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "FileParser"

    const-string v3, "getConfig >>> Error!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    if-eqz v7, :cond_2

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 236
    .restart local v9    # "fileContent":[B
    .restart local v10    # "fileId":Ljava/lang/String;
    .restart local v11    # "fileVersion":Ljava/lang/String;
    .restart local v12    # "targetIdentifier":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v2, "FileParser"

    const-string v3, "getConfig >>> no data!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    .end local v9    # "fileContent":[B
    .end local v10    # "fileId":Ljava/lang/String;
    .end local v11    # "fileVersion":Ljava/lang/String;
    .end local v12    # "targetIdentifier":Ljava/lang/String;
    :cond_4
    :goto_3
    if-eqz v7, :cond_2

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 239
    :cond_5
    :try_start_4
    const-string v2, "FileParser"

    const-string v3, "getConfig >>> Cursor is null!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 245
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_6

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public static readDesktopAppIconBadgedList()Ljava/util/ArrayList;
    .locals 13

    .prologue
    .line 45
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/bbkcore/desktop_app_icon_badged_list_server.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v9, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "appIconBadgedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "FileParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readDesktopAppIconBadgedList, srcFile.exists() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

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

    move-result-object v3

    .line 52
    .local v3, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 53
    .local v8, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v8, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v3    # "command":Ljava/lang/String;
    .end local v8    # "runtime":Ljava/lang/Runtime;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 59
    .local v5, "fileReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 61
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "pkg":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    .line 65
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 66
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v7

    goto :goto_1

    .line 54
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 55
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "FileParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create file error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "pkg":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 71
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 72
    const/4 v1, 0x0

    .line 73
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 74
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :try_start_5
    const-string v10, "FileParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appIconBadgedList.size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    if-eqz v1, :cond_3

    .line 88
    const/4 v1, 0x0

    .line 89
    :cond_3
    if-eqz v5, :cond_4

    .line 90
    const/4 v5, 0x0

    .line 92
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v0

    .line 76
    :catch_1
    move-exception v4

    .line 78
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v1, :cond_5

    .line 79
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 81
    :cond_5
    if-eqz v5, :cond_6

    .line 82
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 87
    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    .line 88
    const/4 v1, 0x0

    .line 89
    :cond_7
    if-eqz v5, :cond_4

    .line 90
    const/4 v5, 0x0

    goto :goto_2

    .line 87
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v1, :cond_8

    .line 88
    const/4 v1, 0x0

    .line 89
    :cond_8
    if-eqz v5, :cond_9

    .line 90
    const/4 v5, 0x0

    :cond_9
    throw v10

    .line 87
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 84
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_4

    .line 76
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_3
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static readNotificationChangeableList()Ljava/util/ArrayList;
    .locals 13

    .prologue
    .line 96
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/bbkcore/changeable_shield_list_server.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v9, "srcFile":Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v2, "changeableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "FileParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readNotificationChangeableList, srcFile.exists() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 102
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

    move-result-object v3

    .line 103
    .local v3, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 104
    .local v8, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v8, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v3    # "command":Ljava/lang/String;
    .end local v8    # "runtime":Ljava/lang/Runtime;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 110
    .local v5, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 112
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "pkg":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    .line 116
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 117
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v7

    goto :goto_1

    .line 105
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 106
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "FileParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create file error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "pkg":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 122
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 123
    const/4 v0, 0x0

    .line 124
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 125
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :try_start_5
    const-string v10, "FileParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeableList.size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    if-eqz v0, :cond_3

    .line 139
    const/4 v0, 0x0

    .line 140
    :cond_3
    if-eqz v5, :cond_4

    .line 141
    const/4 v5, 0x0

    .line 143
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v2

    .line 127
    :catch_1
    move-exception v4

    .line 129
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v0, :cond_5

    .line 130
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 132
    :cond_5
    if-eqz v5, :cond_6

    .line 133
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 138
    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    .line 139
    const/4 v0, 0x0

    .line 140
    :cond_7
    if-eqz v5, :cond_4

    .line 141
    const/4 v5, 0x0

    goto :goto_2

    .line 138
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v0, :cond_8

    .line 139
    const/4 v0, 0x0

    .line 140
    :cond_8
    if-eqz v5, :cond_9

    .line 141
    const/4 v5, 0x0

    :cond_9
    throw v10

    .line 138
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 135
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_4

    .line 127
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_3
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static readNotificationIconInfo(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 253
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v4, "notificationIconsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    const/4 v3, 0x0

    .line 256
    .local v3, "notiInfosStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 257
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x7f080009

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 258
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 259
    .local v8, "xrp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v9, "utf-8"

    invoke-interface {v8, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 261
    const-string v5, ""

    .line 262
    .local v5, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 263
    .local v0, "colorIconId":I
    const/4 v7, 0x0

    .line 264
    .local v7, "whiteIconId":I
    :goto_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-eq v9, v12, :cond_6

    .line 265
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-ne v9, v13, :cond_3

    .line 266
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "notificationInfo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 267
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 268
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    const-string v11, "com.android.systemui"

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 269
    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    const-string v11, "com.android.systemui"

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 279
    :cond_0
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 283
    .end local v0    # "colorIconId":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "whiteIconId":I
    .end local v8    # "xrp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v9, "FileParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read xml error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    if-eqz v3, :cond_1

    .line 287
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 293
    const/4 v3, 0x0

    .line 296
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-object v4

    .line 271
    .restart local v0    # "colorIconId":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "res":Landroid/content/res/Resources;
    .restart local v7    # "whiteIconId":I
    .restart local v8    # "xrp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 272
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "notificationInfo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 273
    const/4 v9, 0x2

    new-array v2, v9, [I

    const/4 v9, 0x0

    aput v0, v2, v9

    const/4 v9, 0x1

    aput v7, v2, v9

    .line 274
    .local v2, "icons":[I
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 292
    .end local v0    # "colorIconId":I
    .end local v2    # "icons":[I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "whiteIconId":I
    .end local v8    # "xrp":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_4

    .line 293
    const/4 v3, 0x0

    :cond_4
    throw v9

    .line 276
    .restart local v0    # "colorIconId":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "res":Landroid/content/res/Resources;
    .restart local v7    # "whiteIconId":I
    .restart local v8    # "xrp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    goto :goto_1

    .line 281
    :cond_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    const/4 v3, 0x0

    .line 292
    if-eqz v3, :cond_2

    .line 293
    const/4 v3, 0x0

    goto :goto_3

    .line 289
    .end local v0    # "colorIconId":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "whiteIconId":I
    .end local v8    # "xrp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public static readStringData([B)Ljava/util/ArrayList;
    .locals 11
    .param p0, "fileContent"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    const-string v8, "FileParser"

    const-string v9, "readStringData"

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, p0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 151
    .local v7, "strContent":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 152
    const-string v8, "FileParser"

    const-string v9, "fileContent is empty!"

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v7    # "strContent":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 155
    .restart local v7    # "strContent":Ljava/lang/String;
    :cond_0
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "strArray":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 157
    .local v2, "dataString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 158
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    const-string v8, "\r"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 162
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "dataString":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "strArray":[Ljava/lang/String;
    .end local v7    # "strContent":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 167
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v8, "FileParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "datasList size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readXmlData([B)Ljava/util/ArrayList;
    .locals 11
    .param p0, "fileContent"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 174
    const-string v6, "FileParser"

    const-string v7, "readXmlData"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 176
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v1, "datasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 180
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 181
    .local v5, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, "utf-8"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 182
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 183
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "packagenames"

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 185
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "item"

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "dataString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v10, :cond_0

    .line 189
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 191
    :cond_0
    const/4 v6, 0x3

    const/4 v7, 0x0

    const-string v8, "item"

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 193
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 203
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v6, "FileParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "datasList size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-object v1

    .line 197
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 198
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 198
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 197
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 200
    :goto_2
    throw v6

    .line 198
    :catch_3
    move-exception v2

    .line 199
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
