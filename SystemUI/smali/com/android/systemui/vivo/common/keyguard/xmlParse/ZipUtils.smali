.class public Lcom/android/systemui/vivo/common/keyguard/xmlParse/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unZip(Ljava/lang/String;)Z
    .locals 22
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v6, -0x1

    .line 20
    .local v6, "count":I
    const/4 v14, -0x1

    .line 21
    .local v14, "index":I
    const-string v17, ""

    .line 23
    .local v17, "savepath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 24
    .local v9, "file":Ljava/io/File;
    const/16 v16, 0x0

    .line 25
    .local v16, "is":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 26
    .local v12, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 28
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    const-string v21, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 31
    :try_start_0
    new-instance v18, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 33
    .local v18, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    move-object v4, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    move-object v13, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    move-object v10, v9

    .line 35
    .end local v9    # "file":Ljava/io/File;
    .local v10, "file":Ljava/io/File;
    :goto_0
    :try_start_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 36
    const/16 v19, 0x800

    move/from16 v0, v19

    new-array v5, v0, [B

    .line 38
    .local v5, "buf":[B
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 40
    .local v8, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 41
    .local v11, "filename":Ljava/lang/String;
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 42
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v14, v0, :cond_0

    .line 43
    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 45
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 46
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 49
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v16

    .line 51
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v19, 0x800

    move/from16 v0, v19

    invoke-direct {v3, v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 54
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v6, v0, :cond_1

    .line 55
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v5, v0, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 64
    .end local v5    # "buf":[B
    .end local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "filename":Ljava/lang/String;
    .end local v18    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v15

    .line 65
    .local v15, "ioe":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    const/16 v19, 0x0

    .line 68
    .end local v15    # "ioe":Ljava/io/IOException;
    :goto_3
    return v19

    .line 57
    .restart local v5    # "buf":[B
    .restart local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v11    # "filename":Ljava/lang/String;
    .restart local v18    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 58
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 59
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v4, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v13, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    move-object v10, v9

    .line 60
    .end local v9    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    goto/16 :goto_0

    .line 62
    .end local v5    # "buf":[B
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "filename":Ljava/lang/String;
    :cond_2
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 68
    const/16 v19, 0x1

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto :goto_3

    .line 64
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "file":Ljava/io/File;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v15

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto :goto_2

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "buf":[B
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v11    # "filename":Ljava/lang/String;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v15

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v15

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method
