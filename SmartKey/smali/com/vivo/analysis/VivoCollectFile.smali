.class public Lcom/vivo/analysis/VivoCollectFile;
.super Ljava/lang/Object;
.source "VivoCollectFile.java"


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "/data/data/com.bbk.iqoo.logsystem/shared_prefs/event_id_info.xml"

.field private static final CONFIG_FILE_EXT:Ljava/lang/String; = "/data/bbkcore/event_id_info.xml"

.field private static final DBG:Z = false

.field private static final DIR:Ljava/lang/String;

.field private static final FILE_SUFFIX:Ljava/lang/String; = ".txt"

.field private static MAX_DIR_SIZE:I = 0x0

.field private static final MAX_FILE_NUM:I = 0x1

.field private static MAX_FILE_SIZE:I = 0x0

.field private static final NEW_LINE:Ljava/lang/String; = "\r\n"

.field private static final RESERVED_SPACE:I = 0x6400000

.field private static final ROOT_DIR:Ljava/lang/String; = "/data"

.field private static final TAG:Ljava/lang/String; = "VivoCollectFile"

.field private static TOTAL_DIR_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vlog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/analysis/VivoCollectFile;->DIR:Ljava/lang/String;

    .line 33
    const/high16 v0, 0x1900000

    sput v0, Lcom/vivo/analysis/VivoCollectFile;->TOTAL_DIR_SIZE:I

    .line 34
    const/high16 v0, 0x100000

    sput v0, Lcom/vivo/analysis/VivoCollectFile;->MAX_DIR_SIZE:I

    .line 36
    sget v0, Lcom/vivo/analysis/VivoCollectFile;->MAX_DIR_SIZE:I

    div-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vivo/analysis/VivoCollectFile;->MAX_FILE_SIZE:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDir(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 264
    .line 266
    :try_start_0
    const-string v1, "file_size"

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectFile;->parseXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_0
    if-lez v1, :cond_0

    .line 271
    shl-int/lit8 v1, v1, 0x14

    sput v1, Lcom/vivo/analysis/VivoCollectFile;->MAX_DIR_SIZE:I

    .line 272
    sget v1, Lcom/vivo/analysis/VivoCollectFile;->MAX_DIR_SIZE:I

    div-int/lit8 v1, v1, 0x1

    sput v1, Lcom/vivo/analysis/VivoCollectFile;->MAX_FILE_SIZE:I

    .line 276
    :cond_0
    :try_start_1
    const-string v1, "dir_size"

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectFile;->parseXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 280
    :goto_1
    if-lez v1, :cond_1

    .line 281
    shl-int/lit8 v1, v1, 0x14

    sput v1, Lcom/vivo/analysis/VivoCollectFile;->TOTAL_DIR_SIZE:I

    .line 283
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x6400000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 308
    :cond_2
    :goto_2
    return v0

    .line 267
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    .line 277
    :catch_1
    move-exception v1

    move v1, v0

    goto :goto_1

    .line 287
    :cond_3
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vivo/analysis/VivoCollectFile;->DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 293
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    :cond_5
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vivo/analysis/VivoCollectFile;->DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectFile;->deleteOldDir(Ljava/io/File;)V

    .line 300
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vivo/analysis/VivoCollectFile;->DIR:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    const/16 v2, 0x1ff

    invoke-static {v1, v2, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 308
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 306
    :cond_6
    sget v0, Lcom/vivo/analysis/VivoCollectFile;->MAX_DIR_SIZE:I

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/vivo/analysis/VivoCollectFile;->deleteOldFile(Ljava/io/File;J)V

    goto :goto_3
.end method

.method private static chooseFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 371
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 372
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 373
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 376
    const-wide/16 v0, 0x0

    .line 377
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 378
    if-eqz v8, :cond_5

    .line 379
    array-length v10, v8

    move v5, v6

    move-object v2, v4

    :goto_0
    if-lt v5, v10, :cond_1

    move-object v0, v2

    .line 394
    :goto_1
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 396
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 397
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    move-object v0, v4

    .line 403
    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 379
    :cond_1
    aget-object v3, v8, v5

    .line 381
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 382
    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 379
    :cond_2
    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 384
    :cond_3
    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    .line 385
    const-string v13, "_"

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 384
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 386
    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 387
    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2

    .line 388
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v11, v12, v0

    if-lez v11, :cond_2

    .line 389
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    move-object v2, v3

    .line 390
    goto :goto_3

    :cond_4
    move-object v0, v4

    .line 403
    goto :goto_2

    :cond_5
    move-object v0, v4

    goto/16 :goto_1
.end method

.method private static createRecordHead(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 470
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, "ro.vivo.product.version"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    const-string v1, "versionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static deleteOldDir(Ljava/io/File;)V
    .locals 14

    .prologue
    .line 312
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 313
    if-nez v8, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const-wide/16 v4, 0x0

    .line 316
    const-wide v2, 0x7fffffffffffffffL

    .line 317
    const/4 v1, 0x0

    .line 318
    array-length v9, v8

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    :goto_1
    if-lt v6, v9, :cond_3

    .line 336
    sget v1, Lcom/vivo/analysis/VivoCollectFile;->TOTAL_DIR_SIZE:I

    int-to-long v2, v1

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 338
    if-eqz v2, :cond_2

    .line 339
    array-length v3, v2

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_8

    .line 341
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 318
    :cond_3
    aget-object v1, v8, v6

    .line 319
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_5

    .line 320
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 318
    :cond_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 323
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v7, v10, v2

    if-gez v7, :cond_6

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-object v0, v1

    .line 327
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 328
    if-eqz v10, :cond_0

    .line 330
    array-length v11, v10

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v11, :cond_4

    aget-object v12, v10, v7

    .line 331
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 332
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v4, v12

    .line 330
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 334
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 339
    :cond_8
    aget-object v4, v2, v1

    .line 340
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static deleteOldFile(Ljava/io/File;J)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 347
    if-nez v5, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const-wide/16 v0, 0x0

    .line 350
    array-length v4, v5

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_2

    .line 356
    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    .line 357
    const/4 v3, 0x0

    .line 358
    const-wide v0, 0x7fffffffffffffffL

    .line 359
    array-length v6, v5

    move v4, v2

    :goto_2
    if-lt v4, v6, :cond_4

    .line 365
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 350
    :cond_2
    aget-object v6, v5, v3

    .line 351
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 352
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 350
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 359
    :cond_4
    aget-object v2, v5, v4

    .line 360
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v7, v8, v0

    if-gez v7, :cond_5

    .line 362
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 359
    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_4
.end method

.method private static declared-synchronized doWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 189
    const-class v5, Lcom/vivo/analysis/VivoCollectFile;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/vivo/analysis/VivoCollectFile;->checkDir(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    move v0, v1

    .line 260
    :goto_0
    monitor-exit v5

    return v0

    .line 193
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/vivo/analysis/VivoCollectFile;->DIR:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 196
    if-nez p3, :cond_5

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_1
    :goto_1
    if-eqz v2, :cond_a

    .line 215
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".txt"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 221
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 223
    sget v2, Lcom/vivo/analysis/VivoCollectFile;->MAX_FILE_SIZE:I

    if-le v0, v2, :cond_2

    .line 224
    sget v0, Lcom/vivo/analysis/VivoCollectFile;->MAX_FILE_SIZE:I

    .line 225
    const/4 v2, 0x0

    sget v3, Lcom/vivo/analysis/VivoCollectFile;->MAX_FILE_SIZE:I

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 228
    :cond_2
    const/4 v3, 0x0

    .line 230
    :try_start_2
    new-instance v2, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    if-eqz p4, :cond_3

    .line 233
    invoke-static {p5}, Lcom/vivo/analysis/VivoCollectFile;->createRecordHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 243
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 249
    if-eqz v2, :cond_4

    .line 251
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 258
    :cond_4
    :goto_3
    const/16 v1, 0x1ff

    const/4 v2, -0x1

    const/4 v3, -0x1

    :try_start_5
    invoke-static {v4, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 199
    :cond_5
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/analysis/VivoCollectFile;->chooseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    if-eqz v4, :cond_7

    .line 201
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    sget v8, Lcom/vivo/analysis/VivoCollectFile;->MAX_FILE_SIZE:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 205
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v3

    .line 206
    goto/16 :goto_1

    .line 209
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    .line 245
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 249
    :goto_4
    if-eqz v0, :cond_8

    .line 251
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_8
    :goto_5
    move v0, v1

    .line 247
    goto/16 :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 254
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 248
    :catchall_1
    move-exception v0

    move-object v2, v3

    .line 249
    :goto_6
    if-eqz v2, :cond_9

    .line 251
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 256
    :cond_9
    :goto_7
    :try_start_a
    throw v0

    .line 252
    :catch_2
    move-exception v1

    .line 254
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 252
    :catch_3
    move-exception v1

    .line 254
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 248
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 245
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_4

    :cond_a
    move-object v4, v0

    goto/16 :goto_2
.end method

.method public static needCollection(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 407
    const-string v0, "1"

    invoke-static {p0}, Lcom/vivo/analysis/VivoCollectFile;->parseXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x1

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 414
    const-string v0, ""

    .line 415
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-object v0

    .line 418
    :cond_1
    const/4 v3, 0x0

    .line 420
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 423
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/bbkcore/event_id_info.xml"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "/data/bbkcore/event_id_info.xml"

    move-object v5, v2

    .line 426
    :goto_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :try_start_1
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 428
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 429
    :goto_2
    if-eq v1, v4, :cond_2

    if-eqz v3, :cond_4

    .line 455
    :cond_2
    if-eqz v2, :cond_0

    .line 457
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .line 460
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 424
    :cond_3
    :try_start_3
    const-string v2, "/data/data/com.bbk.iqoo.logsystem/shared_prefs/event_id_info.xml"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v2

    goto :goto_1

    .line 430
    :cond_4
    packed-switch v1, :pswitch_data_0

    .line 450
    :cond_5
    :goto_3
    :pswitch_0
    :try_start_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_2

    .line 435
    :pswitch_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 436
    const-string v5, "string"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 437
    const/4 v1, 0x0

    const-string v5, "name"

    invoke-interface {v6, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 439
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    move v3, v4

    .line 441
    goto :goto_3

    .line 452
    :catch_1
    move-exception v2

    .line 455
    :goto_4
    if-eqz v1, :cond_0

    .line 457
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 458
    :catch_2
    move-exception v1

    .line 460
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 455
    :goto_5
    if-eqz v2, :cond_6

    .line 457
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 462
    :cond_6
    :goto_6
    throw v0

    .line 458
    :catch_3
    move-exception v1

    .line 460
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 454
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 452
    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_4

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/vivo/analysis/VivoCollectFile;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6

    .prologue
    .line 179
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 180
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    const/4 v0, -0x1

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/vivo/analysis/VivoCollectFile;->doWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static writeCmd(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;ZLjava/lang/String;)I
    .locals 10

    .prologue
    .line 86
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 88
    :cond_0
    const/4 v0, -0x1

    .line 147
    :goto_0
    return v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    const/4 v0, -0x1

    goto :goto_0

    .line 98
    :cond_2
    const/4 v1, 0x0

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    array-length v5, p2

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    :goto_1
    if-lt v3, v5, :cond_3

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3, p4}, Lcom/vivo/analysis/VivoCollectFile;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 100
    :cond_3
    aget-object v6, p2, v3

    .line 101
    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 100
    :cond_4
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 103
    :cond_5
    const/4 v1, 0x1

    aget-object v1, v6, v1

    if-nez v1, :cond_6

    .line 104
    const/4 v1, 0x1

    const-string v2, " "

    aput-object v2, v6, v1

    .line 105
    :cond_6
    const/4 v1, 0x0

    .line 107
    :try_start_0
    const-string v2, "logcat"

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 108
    const/4 v2, 0x1

    const-string v7, "-v time -b events -b system -b main -t 500"

    aput-object v7, v6, v2

    .line 112
    :cond_7
    :goto_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 114
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 118
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    :goto_5
    :try_start_3
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 123
    :try_start_4
    const-string v0, "\r\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v0, "cmd: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    const-string v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/16 v0, 0x2000

    new-array v0, v0, [C

    .line 128
    :goto_6
    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    if-gtz v6, :cond_c

    .line 131
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    :goto_7
    if-eqz v1, :cond_8

    .line 140
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 143
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 144
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    .line 109
    :cond_a
    :try_start_7
    const-string v2, "top"

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 110
    const/4 v2, 0x1

    const-string v7, "-m 10 -t -n 3"

    aput-object v7, v6, v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    .line 136
    :catch_0
    move-exception v2

    .line 138
    :goto_9
    if-eqz v0, :cond_b

    .line 140
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 143
    :cond_b
    :goto_a
    if-eqz v1, :cond_4

    .line 144
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_2

    .line 129
    :cond_c
    const/4 v7, 0x0

    :try_start_9
    invoke-virtual {v4, v0, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 136
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_9

    .line 132
    :catch_2
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    :goto_b
    if-eqz v1, :cond_d

    .line 140
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 143
    :cond_d
    :goto_c
    if-eqz v2, :cond_e

    .line 144
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 145
    :cond_e
    throw v0

    .line 141
    :catch_3
    move-exception v2

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_8

    .line 137
    :catchall_1
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_b

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_b

    .line 136
    :catch_6
    move-exception v1

    move-object v1, v2

    goto :goto_9

    .line 119
    :catch_7
    move-exception v1

    goto/16 :goto_5

    .line 115
    :catch_8
    move-exception v1

    goto/16 :goto_4
.end method

.method public static writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 61
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/vivo/analysis/VivoCollectFile;->doWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
