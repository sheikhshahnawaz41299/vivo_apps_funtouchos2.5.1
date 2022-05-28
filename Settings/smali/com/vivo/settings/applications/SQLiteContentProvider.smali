.class public abstract Lcom/vivo/settings/applications/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# static fields
.field protected static final DEBUG:Z = true

.field private static final SLEEP_AFTER_YIELD_DELAY:I = 0xfa0

.field protected static final TAG:Ljava/lang/String; = "SQLiteContentProvider"


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mNotifyChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBeginTransaction()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x0

    .line 176
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 177
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 179
    :try_start_0
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 181
    .local v1, "numOperations":I
    new-array v3, v1, [Landroid/content/ContentProviderResult;

    .line 182
    .local v3, "results":[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 183
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 184
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_0

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v6, 0xfa0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    .line 187
    :cond_0
    invoke-virtual {v2, p0, v3, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v4

    aput-object v4, v3, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_1
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 193
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 194
    invoke-virtual {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->onEndTransaction()V

    return-object v3

    .line 192
    .end local v0    # "i":I
    .end local v1    # "numOperations":I
    .end local v3    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 193
    iget-object v5, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 194
    invoke-virtual {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->onEndTransaction()V

    throw v4
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 97
    array-length v2, p2

    .line 98
    .local v2, "numInsert":I
    invoke-direct {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 99
    .local v0, "applyingBatch":Z
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 100
    if-nez v0, :cond_2

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 103
    :try_start_0
    aget-object v4, p2, v1

    invoke-virtual {p0, p1, v4}, Lcom/vivo/settings/applications/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 104
    .local v3, "result":Landroid/net/Uri;
    iget-boolean v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 105
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    .line 107
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v3    # "result":Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v4, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 114
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->onEndTransaction()V

    .line 115
    return v2

    .line 111
    .restart local v1    # "i":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 121
    const/4 v1, -0x1

    .line 122
    .local v1, "result":I
    invoke-direct {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 123
    .local v0, "applyingBatch":Z
    if-nez v0, :cond_2

    .line 124
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 127
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vivo/settings/applications/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 128
    if-lez v1, :cond_0

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 135
    invoke-virtual {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->onEndTransaction()V

    .line 142
    :cond_1
    :goto_0
    return v1

    .line 133
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 137
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/vivo/settings/applications/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 138
    if-lez v1, :cond_1

    .line 139
    iput-boolean v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x1

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "result":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 68
    .local v0, "applyingBatch":Z
    if-nez v0, :cond_2

    .line 69
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 72
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/applications/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    invoke-virtual {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->onEndTransaction()V

    .line 89
    :cond_1
    :goto_0
    return-object v1

    .line 79
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 84
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/applications/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    iput-boolean v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onBegin()V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->onBeginTransaction()V

    .line 202
    const-string v0, "SQLiteContentProvider"

    const-string v1, "onBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public onCommit()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "SQLiteContentProvider"

    const-string v1, "onCommit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected onEndTransaction()V
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    .line 226
    invoke-virtual {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->notifyChange()V

    .line 228
    :cond_0
    return-void
.end method

.method public onRollback()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "SQLiteContentProvider"

    const-string v1, "onRollback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 149
    const/4 v1, -0x1

    .line 150
    .local v1, "result":I
    invoke-direct {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 151
    .local v0, "applyingBatch":Z
    if-nez v0, :cond_2

    .line 152
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 153
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 155
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/settings/applications/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 156
    if-lez v1, :cond_0

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    invoke-virtual {p0}, Lcom/vivo/settings/applications/SQLiteContentProvider;->onEndTransaction()V

    .line 170
    :cond_1
    :goto_0
    return v1

    .line 161
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 165
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/settings/applications/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 166
    if-lez v1, :cond_1

    .line 167
    iput-boolean v2, p0, Lcom/vivo/settings/applications/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
