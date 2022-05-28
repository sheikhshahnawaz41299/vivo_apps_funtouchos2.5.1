.class public Lcom/vivo/settings/applications/ApplicationNotifiData;
.super Ljava/lang/Object;
.source "ApplicationNotifiData.java"


# static fields
.field public static final ACTION_CONFIG_FILE_UPDATE_FINISH:Ljava/lang/String; = "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_StatusBar"

.field private static final CHANGEABLELIST_FILE_PATH:Ljava/lang/String; = "/data/bbkcore/changeable_shield_list_server.xml"

.field public static final CHANGEABLELIST_IDENTIFIER:Ljava/lang/String; = "Notification"

.field public static final CONFIG_TYPE:Ljava/lang/String; = "1"

.field public static final DATABASE_URI:Ljava/lang/String; = "content://com.vivo.daemonservice.unifiedconfigprovider/configs"

.field public static final ENGINE_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final HANDLER_DELAY:I = 0xea60

.field public static final MODULE_NAME:Ljava/lang/String; = "StatusBar"

.field private static final MSG_REQUEST_READ_CONFIG_LIST:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ApplicationNotifiData"

.field private static mInstance:Lcom/vivo/settings/applications/ApplicationNotifiData;


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

.field private mContext:Landroid/content/Context;

.field mFileObserver:Landroid/os/FileObserver;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mChangeableList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/vivo/settings/applications/ApplicationNotifiData$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/applications/ApplicationNotifiData$1;-><init>(Lcom/vivo/settings/applications/ApplicationNotifiData;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v0, Lcom/vivo/settings/applications/ApplicationNotifiData$4;

    invoke-direct {v0, p0}, Lcom/vivo/settings/applications/ApplicationNotifiData$4;-><init>(Lcom/vivo/settings/applications/ApplicationNotifiData;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mContext:Landroid/content/Context;

    .line 100
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->pm:Landroid/content/pm/PackageManager;

    .line 101
    invoke-virtual {p0}, Lcom/vivo/settings/applications/ApplicationNotifiData;->initData()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/applications/ApplicationNotifiData;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ApplicationNotifiData;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/ApplicationNotifiData;->requestReadConfigList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/applications/ApplicationNotifiData;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ApplicationNotifiData;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/ApplicationNotifiData;->updateConfigList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/settings/applications/ApplicationNotifiData;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/ApplicationNotifiData;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mChangeableList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vivo/settings/applications/ApplicationNotifiData;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ApplicationNotifiData;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mChangeableList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vivo/settings/applications/ApplicationNotifiData;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ApplicationNotifiData;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/applications/ApplicationNotifiData;->readNotificationChangeableList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/settings/applications/ApplicationNotifiData;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/ApplicationNotifiData;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/applications/ApplicationNotifiData;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/ApplicationNotifiData;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
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
    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 283
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const/4 v3, 0x1

    aput-object p3, v6, v3

    const/4 v3, 0x2

    aput-object p4, v6, v3

    const/4 v3, 0x3

    aput-object p5, v6, v3

    .line 286
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 288
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 289
    const-string v3, "ApplicationNotifiData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " cursor  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-eqz v9, :cond_a

    .line 292
    const-string v3, "ApplicationNotifiData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor.count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v14, ""

    .local v14, "fileId":Ljava/lang/String;
    const-string v20, ""

    .local v20, "targetIdentifier":Ljava/lang/String;
    const-string v15, ""

    .line 294
    .local v15, "fileVersion":Ljava/lang/String;
    const/4 v13, 0x0

    .line 295
    .local v13, "fileContent":[B
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 296
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 297
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_9

    .line 298
    const-string v3, "id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 299
    const-string v3, "identifier"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 300
    const-string v3, "fileversion"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 301
    const-string v3, "filecontent"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 303
    const-string v3, "ApplicationNotifiData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConfig >>> fileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fileVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " targetIdentifier = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 308
    new-instance v19, Ljava/lang/String;

    const-string v3, "UTF-8"

    move-object/from16 v0, v19

    invoke-direct {v0, v13, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 309
    .local v19, "strContent":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v10, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    if-nez v19, :cond_2

    .line 311
    :cond_0
    const/4 v10, 0x0

    .line 343
    .end local v10    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_1

    .line 344
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 347
    .end local v13    # "fileContent":[B
    .end local v14    # "fileId":Ljava/lang/String;
    .end local v15    # "fileVersion":Ljava/lang/String;
    .end local v19    # "strContent":Ljava/lang/String;
    .end local v20    # "targetIdentifier":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v10

    .line 313
    .restart local v10    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "fileContent":[B
    .restart local v14    # "fileId":Ljava/lang/String;
    .restart local v15    # "fileVersion":Ljava/lang/String;
    .restart local v19    # "strContent":Ljava/lang/String;
    .restart local v20    # "targetIdentifier":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v3, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 314
    .local v18, "strArray":[Ljava/lang/String;
    move-object/from16 v8, v18

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v11, v8, v16

    .line 315
    .local v11, "dataString":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 316
    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 317
    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 318
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 320
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 321
    const-string v3, "ApplicationNotifiData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 343
    .end local v11    # "dataString":Ljava/lang/String;
    :cond_5
    if-eqz v9, :cond_1

    .line 344
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 331
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v18    # "strArray":[Ljava/lang/String;
    .end local v19    # "strContent":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 339
    .end local v13    # "fileContent":[B
    .end local v14    # "fileId":Ljava/lang/String;
    .end local v15    # "fileVersion":Ljava/lang/String;
    .end local v20    # "targetIdentifier":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 340
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "ApplicationNotifiData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConfig >>> Error! e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    if-eqz v9, :cond_7

    .line 344
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 347
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 334
    .restart local v13    # "fileContent":[B
    .restart local v14    # "fileId":Ljava/lang/String;
    .restart local v15    # "fileVersion":Ljava/lang/String;
    .restart local v20    # "targetIdentifier":Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v3, "ApplicationNotifiData"

    const-string v4, "getConfig >>> no data!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    .end local v13    # "fileContent":[B
    .end local v14    # "fileId":Ljava/lang/String;
    .end local v15    # "fileVersion":Ljava/lang/String;
    .end local v20    # "targetIdentifier":Ljava/lang/String;
    :cond_9
    :goto_4
    if-eqz v9, :cond_7

    .line 344
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 337
    :cond_a
    :try_start_5
    const-string v3, "ApplicationNotifiData"

    const-string v4, "getConfig >>> Cursor is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 343
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_b

    .line 344
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/settings/applications/ApplicationNotifiData;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-object v0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mInstance:Lcom/vivo/settings/applications/ApplicationNotifiData;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/vivo/settings/applications/ApplicationNotifiData;

    invoke-direct {v0, p0}, Lcom/vivo/settings/applications/ApplicationNotifiData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mInstance:Lcom/vivo/settings/applications/ApplicationNotifiData;

    .line 95
    :cond_0
    sget-object v0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mInstance:Lcom/vivo/settings/applications/ApplicationNotifiData;

    return-object v0
.end method

.method private observeChangeableListServer()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/vivo/settings/applications/ApplicationNotifiData$2;

    const-string v1, "/data/bbkcore/changeable_shield_list_server.xml"

    invoke-direct {v0, p0, v1}, Lcom/vivo/settings/applications/ApplicationNotifiData$2;-><init>(Lcom/vivo/settings/applications/ApplicationNotifiData;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mFileObserver:Landroid/os/FileObserver;

    .line 192
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 193
    return-void
.end method

.method private readNotificationChangeableList(Ljava/lang/String;Ljava/util/ArrayList;)V
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
    .line 124
    .local p2, "dstList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, "srcFile":Ljava/io/File;
    if-nez p2, :cond_1

    .line 126
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "dstList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .restart local p2    # "dstList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const-string v10, "ApplicationNotifiData"

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

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 133
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 134
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

    .line 135
    .local v2, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 136
    .local v8, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v8, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 178
    .end local v2    # "command":Ljava/lang/String;
    .end local v8    # "runtime":Ljava/lang/Runtime;
    :cond_0
    :goto_1
    return-void

    .line 128
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v10

    .line 141
    :cond_2
    const/4 v4, 0x0

    .line 142
    .local v4, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 144
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v5, "fileReader":Ljava/io/FileReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "pkg":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_4

    .line 149
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 150
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v10, "ApplicationNotifiData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dstList add pkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 155
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 156
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 157
    const/4 v0, 0x0

    .line 158
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 159
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :try_start_4
    const-string v10, "ApplicationNotifiData"

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

    .line 173
    if-eqz v0, :cond_5

    .line 174
    const/4 v0, 0x0

    .line 175
    :cond_5
    if-eqz v4, :cond_0

    .line 176
    const/4 v4, 0x0

    goto :goto_1

    .line 160
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v0, :cond_6

    .line 163
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 165
    :cond_6
    if-eqz v4, :cond_7

    .line 166
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    :cond_7
    :goto_4
    :try_start_6
    const-string v10, "ApplicationNotifiData"

    const-string v11, "readNotificationChangeableList:"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 173
    if-eqz v0, :cond_8

    .line 174
    const/4 v0, 0x0

    .line 175
    :cond_8
    if-eqz v4, :cond_0

    .line 176
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 173
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v0, :cond_9

    .line 174
    const/4 v0, 0x0

    .line 175
    :cond_9
    if-eqz v4, :cond_a

    .line 176
    const/4 v4, 0x0

    :cond_a
    throw v10

    .line 173
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

    .line 168
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_4

    .line 160
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

.method public static readXmlData(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 253
    const-string v4, "ApplicationNotifiData"

    const-string v5, "readXmlData"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v1, "datasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 257
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 258
    .local v3, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "utf-8"

    invoke-interface {v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 259
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 260
    const-string v4, "packagenames"

    invoke-interface {v3, v7, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 262
    const-string v4, "item"

    invoke-interface {v3, v7, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "dataString":Ljava/lang/String;
    const-string v4, "ApplicationNotifiData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v9, :cond_0

    .line 267
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 269
    :cond_0
    const-string v4, "item"

    invoke-interface {v3, v9, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v0    # "dataString":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_2

    .line 273
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 276
    :cond_2
    return-object v1
.end method

.method private requestReadConfigList([Ljava/lang/String;)V
    .locals 4
    .param p1, "identifiers"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0xa

    .line 389
    iget-object v1, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object v1, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 391
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 392
    return-void
.end method

.method private systemAppToContrl(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x1

    .line 202
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.vivo.easyshare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 209
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateConfigList([Ljava/lang/String;)V
    .locals 3
    .param p1, "identifiers"    # [Ljava/lang/String;

    .prologue
    .line 351
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/settings/applications/ApplicationNotifiData$3;

    invoke-direct {v1, p0, p1}, Lcom/vivo/settings/applications/ApplicationNotifiData$3;-><init>(Lcom/vivo/settings/applications/ApplicationNotifiData;[Ljava/lang/String;)V

    const-string v2, "updateConfigList"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 374
    return-void
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
    .line 120
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mChangeableList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initData()V
    .locals 4

    .prologue
    .line 105
    const-string v2, "ApplicationNotifiData"

    const-string v3, "initData"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportSecureConfig()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Notification"

    aput-object v3, v0, v2

    .line 108
    .local v0, "identifiers":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/vivo/settings/applications/ApplicationNotifiData;->requestReadConfigList([Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/vivo/settings/applications/ApplicationNotifiData;->updateConfigList([Ljava/lang/String;)V

    .line 110
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_StatusBar"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    .end local v0    # "identifiers":[Ljava/lang/String;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v2, "/data/bbkcore/changeable_shield_list_server.xml"

    iget-object v3, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mChangeableList:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/vivo/settings/applications/ApplicationNotifiData;->readNotificationChangeableList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    invoke-direct {p0}, Lcom/vivo/settings/applications/ApplicationNotifiData;->observeChangeableListServer()V

    goto :goto_0
.end method

.method public isAppNotificationEnable(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 215
    :try_start_0
    iget-object v4, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2200

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 220
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v5, "ApplicationNotifiData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(appInfo.flags & ApplicationInfo.FLAG_SYSTEM) == 0 is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    move v4, v2

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v5, "ApplicationNotifiData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!mChangeableList.contains(pkg) is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mChangeableList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v5, "ApplicationNotifiData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!\'com.vlife.vivo.wallpaper\'.equals(appInfo.packageName) is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v4, "com.vlife.vivo.wallpaper"

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0, v0}, Lcom/vivo/settings/applications/ApplicationNotifiData;->systemAppToContrl(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mChangeableList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/vivo/settings/applications/ApplicationNotifiData;->systemAppToContrl(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/vivo/settings/applications/ApplicationNotifiData;->mChangeableList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "com.vlife.vivo.wallpaper"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_5

    .line 249
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_3
    return v2

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    move v4, v3

    .line 220
    goto :goto_0

    :cond_3
    move v4, v3

    .line 222
    goto :goto_1

    :cond_4
    move v4, v3

    .line 223
    goto :goto_2

    :cond_5
    move v2, v3

    .line 245
    goto :goto_3

    .line 246
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v2, v3

    .line 249
    goto :goto_3
.end method
