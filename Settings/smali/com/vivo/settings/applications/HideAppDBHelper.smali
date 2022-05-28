.class public Lcom/vivo/settings/applications/HideAppDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HideAppDBHelper.java"


# static fields
.field private static DATABASENAME:Ljava/lang/String; = null

.field private static final DATABASEVERSION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "HideAppDBHelper"

.field private static volatile mDBInstance:Lcom/vivo/settings/applications/HideAppDBHelper;


# instance fields
.field public mHideAppsInsert:Landroid/database/DatabaseUtils$InsertHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "hideapp.db"

    sput-object v0, Lcom/vivo/settings/applications/HideAppDBHelper;->DATABASENAME:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/settings/applications/HideAppDBHelper;->mDBInstance:Lcom/vivo/settings/applications/HideAppDBHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/vivo/settings/applications/HideAppDBHelper;->DATABASENAME:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    const-string v0, "HideAppDBHelper"

    const-string v1, " Creating  SQLiteOpenHelper "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 61
    const-string v0, "HideAppDBHelper"

    const-string v1, " Creating  table is : hideapps_list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "create table hideapps_list (_id integer primary key autoincrement,pkgname text NOT NULL,uid integer NOT NULL,hided integer NOT NULL,forbidnet integer NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 103
    const-string v0, "drop table if exists hideapps_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/settings/applications/HideAppDBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/vivo/settings/applications/HideAppDBHelper;->mDBInstance:Lcom/vivo/settings/applications/HideAppDBHelper;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/vivo/settings/applications/HideAppDBHelper;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/vivo/settings/applications/HideAppDBHelper;->mDBInstance:Lcom/vivo/settings/applications/HideAppDBHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/vivo/settings/applications/HideAppDBHelper;

    invoke-direct {v0, p0}, Lcom/vivo/settings/applications/HideAppDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/settings/applications/HideAppDBHelper;->mDBInstance:Lcom/vivo/settings/applications/HideAppDBHelper;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/vivo/settings/applications/HideAppDBHelper;->mDBInstance:Lcom/vivo/settings/applications/HideAppDBHelper;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public hideAppsListInsert(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppDBHelper;->mHideAppsInsert:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/HideAppDBHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 46
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "hideapps_list"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppDBHelper;->mHideAppsInsert:Landroid/database/DatabaseUtils$InsertHelper;

    .line 47
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 77
    const-string v1, "HideAppDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onUpgrade oldVersion is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newVersion is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 82
    .local v4, "startTime":J
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 83
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/HideAppDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/HideAppDBHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 98
    .local v2, "endTime":J
    const-string v1, "HideAppDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide app database upgrade took : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 86
    .end local v2    # "endTime":J
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "HideAppDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/HideAppDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/HideAppDBHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    const/4 p2, 0x1

    goto :goto_0
.end method
