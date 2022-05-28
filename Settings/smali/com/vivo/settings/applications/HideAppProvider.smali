.class public Lcom/vivo/settings/applications/HideAppProvider;
.super Lcom/vivo/settings/applications/SQLiteContentProvider;
.source "HideAppProvider.java"


# static fields
.field private static final HIDEAPP_LIST:I = 0x1

.field private static final HIDEAPP_LIST_ID:I = 0x2

.field private static ID_ONLY_PROJECTION:[Ljava/lang/String;

.field private static final mHideAppsListProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDBHelper:Lcom/vivo/settings/applications/HideAppDBHelper;

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 25
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/applications/HideAppProvider;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/vivo/settings/applications/HideAppProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 31
    sget-object v0, Lcom/vivo/settings/applications/HideAppProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.applications.hideappprovider"

    const-string v2, "hideapps_list"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    sget-object v0, Lcom/vivo/settings/applications/HideAppProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.applications.hideappprovider"

    const-string v2, "hideapps_list/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/settings/applications/HideAppProvider;->mHideAppsListProjectionMap:Ljava/util/HashMap;

    .line 35
    sget-object v0, Lcom/vivo/settings/applications/HideAppProvider;->mHideAppsListProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/vivo/settings/applications/HideAppProvider;->mHideAppsListProjectionMap:Ljava/util/HashMap;

    const-string v1, "pkgname"

    const-string v2, "pkgname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/vivo/settings/applications/HideAppProvider;->mHideAppsListProjectionMap:Ljava/util/HashMap;

    const-string v1, "uid"

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/vivo/settings/applications/HideAppProvider;->mHideAppsListProjectionMap:Ljava/util/HashMap;

    const-string v1, "hided"

    const-string v2, "hided"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/vivo/settings/applications/HideAppProvider;->mHideAppsListProjectionMap:Ljava/util/HashMap;

    const-string v1, "forbidnet"

    const-string v2, "forbidnet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;-><init>()V

    return-void
.end method

.method private initialize()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/HideAppProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/applications/HideAppDBHelper;

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDBHelper:Lcom/vivo/settings/applications/HideAppDBHelper;

    .line 65
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDBHelper:Lcom/vivo/settings/applications/HideAppDBHelper;

    invoke-virtual {v0}, Lcom/vivo/settings/applications/HideAppDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "selectionArgs"    # [Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    if-nez p1, :cond_0

    .line 184
    new-array v1, v4, [Ljava/lang/String;

    aput-object p2, v1, v3

    .line 190
    :goto_0
    return-object v1

    .line 186
    :cond_0
    array-length v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 187
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/lang/String;

    .line 188
    .local v1, "newSelectionArgs":[Ljava/lang/String;
    aput-object p2, v1, v3

    .line 189
    array-length v2, p1

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 121
    sget-object v0, Lcom/vivo/settings/applications/HideAppProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 122
    .local v12, "match":I
    const/4 v13, 0x0

    .line 123
    .local v13, "result":I
    const/4 v8, 0x0

    .line 125
    .local v8, "cursor":Landroid/database/Cursor;
    packed-switch v12, :pswitch_data_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :pswitch_0
    const/4 v13, 0x0

    .line 128
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hideapps_list"

    sget-object v2, Lcom/vivo/settings/applications/HideAppProvider;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 131
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 133
    .local v10, "id":J
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hideapps_list"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v13, v0

    goto :goto_0

    .line 135
    .end local v10    # "id":J
    :catch_0
    move-exception v9

    .line 136
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    move v0, v13

    .line 141
    :goto_1
    return v0

    .line 140
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 141
    .restart local v10    # "id":J
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hideapps_list"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p1}, Lcom/vivo/settings/applications/HideAppDBHelper;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/applications/HideAppDBHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 86
    sget-object v4, Lcom/vivo/settings/applications/HideAppProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 88
    .local v1, "match":I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 89
    .local v0, "contentValues":Landroid/content/ContentValues;
    packed-switch v1, :pswitch_data_0

    .line 94
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :pswitch_0
    iget-object v4, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDBHelper:Lcom/vivo/settings/applications/HideAppDBHelper;

    invoke-virtual {v4, v0}, Lcom/vivo/settings/applications/HideAppDBHelper;->hideAppsListInsert(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 96
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 97
    const/4 v4, 0x0

    .line 99
    :goto_0
    return-object v4

    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyChange()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/settings/applications/HideApp$HideAppsList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 198
    return-void
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->onCreate()Z

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/vivo/settings/applications/HideAppProvider;->initialize()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 58
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SQLiteContentProvider"

    const-string v2, " Cannot start SecureProvider \n"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v2, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDBHelper:Lcom/vivo/settings/applications/HideAppDBHelper;

    invoke-virtual {v2}, Lcom/vivo/settings/applications/HideAppDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 151
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 152
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x0

    .line 153
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 154
    .local v8, "limit":Ljava/lang/String;
    sget-object v2, Lcom/vivo/settings/applications/HideAppProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 155
    .local v9, "match":I
    packed-switch v9, :pswitch_data_0

    .line 167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :pswitch_0
    const-string v2, "hideapps_list"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 158
    sget-object v2, Lcom/vivo/settings/applications/HideAppProvider;->mHideAppsListProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 170
    :goto_0
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 161
    :pswitch_1
    const-string v2, "hideapps_list"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 162
    sget-object v2, Lcom/vivo/settings/applications/HideAppProvider;->mHideAppsListProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 163
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p4, v2}, Lcom/vivo/settings/applications/HideAppProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 164
    const-string v2, "_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDBHelper:Lcom/vivo/settings/applications/HideAppDBHelper;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDBHelper:Lcom/vivo/settings/applications/HideAppDBHelper;

    invoke-virtual {v0}, Lcom/vivo/settings/applications/HideAppDBHelper;->close()V

    .line 73
    iput-object v1, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDBHelper:Lcom/vivo/settings/applications/HideAppDBHelper;

    .line 74
    iput-object v1, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    :cond_0
    return-void
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 106
    sget-object v1, Lcom/vivo/settings/applications/HideAppProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 107
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :pswitch_0
    iget-object v1, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "hideapps_list"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 111
    :goto_0
    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/vivo/settings/applications/HideAppProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "hideapps_list"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
