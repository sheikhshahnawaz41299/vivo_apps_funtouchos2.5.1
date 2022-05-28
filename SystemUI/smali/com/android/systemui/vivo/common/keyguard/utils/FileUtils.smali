.class public Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final FILE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;->FILE_TYPE_MAP:Ljava/util/Map;

    .line 29
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;->getAllFileType()V

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static chmod(Ljava/lang/String;I)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 219
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0, p1}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getAllFileType()V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;->FILE_TYPE_MAP:Ljava/util/Map;

    const-string v1, "jpg"

    const-string v2, "FFD8FF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;->FILE_TYPE_MAP:Ljava/util/Map;

    const-string v1, "png"

    const-string v2, "89504E47"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;->FILE_TYPE_MAP:Ljava/util/Map;

    const-string v1, "gif"

    const-string v2, "47494638"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public static final getFileHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 135
    :cond_0
    const/4 v4, 0x0

    .line 145
    :goto_0
    return-object v4

    .line 137
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 138
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 139
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 141
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static final getFileType(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    :cond_0
    const/4 v2, 0x0

    .line 99
    :goto_0
    return-object v2

    .line 87
    :cond_1
    const/4 v2, 0x0

    .line 88
    .local v2, "filetype":Ljava/lang/String;
    const/16 v4, 0x32

    new-array v0, v4, [B

    .line 90
    .local v0, "b":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 91
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 92
    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;->getFileTypeByStream([B)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 94
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getFileTypeByStream([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;->getFileHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "filetypeHex":Ljava/lang/String;
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;->FILE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    .local v1, "entryiterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "fileTypeHexValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 121
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "fileTypeHexValue":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static final upZipTtfFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "destFile"    # Ljava/lang/String;
    .param p1, "zipPath"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v10, "FileUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "upZipTtfFile destFile = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " srcFile = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "dirPath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 155
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 156
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Ljava/io/File;->setWritable(ZZ)Z

    .line 157
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 160
    :cond_0
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 161
    .local v9, "zf":Ljava/util/zip/ZipFile;
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 164
    .local v4, "in":Ljava/util/zip/ZipInputStream;
    const-string v5, ""

    .line 165
    .local v5, "name":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .local v8, "z":Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_3

    .line 166
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".ttf"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".TTF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 169
    :cond_2
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 172
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 177
    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "z":Ljava/util/zip/ZipEntry;
    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    :goto_1
    const-string v10, "FileUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "upZipdestFile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v7, "uxFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 215
    :goto_2
    return-void

    .line 173
    .end local v7    # "uxFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "FileUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "upZipTtfFile failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 184
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "uxFile":Ljava/io/File;
    :cond_4
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 186
    .restart local v4    # "in":Ljava/util/zip/ZipInputStream;
    const-string v5, ""

    .line 188
    .restart local v5    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .restart local v8    # "z":Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_8

    .line 189
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".ttf"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".TTF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 192
    :cond_6
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 196
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 198
    .local v6, "out":Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 200
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    .local v1, "ch":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_7

    .line 201
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 202
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 210
    .end local v0    # "buffer":[B
    .end local v1    # "ch":I
    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "z":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v3

    .line 211
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "FileUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "upZipTtfFile failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 204
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v1    # "ch":I
    .restart local v4    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "z":Ljava/util/zip/ZipEntry;
    :cond_7
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 205
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    sget v11, Landroid/system/OsConstants;->S_IRUSR:I

    sget v12, Landroid/system/OsConstants;->S_IWUSR:I

    or-int/2addr v11, v12

    sget v12, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v11, v12

    sget v12, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;->chmod(Ljava/lang/String;I)V

    goto :goto_3

    .line 209
    .end local v0    # "buffer":[B
    .end local v1    # "ch":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :cond_8
    const-string v10, "FileUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method
