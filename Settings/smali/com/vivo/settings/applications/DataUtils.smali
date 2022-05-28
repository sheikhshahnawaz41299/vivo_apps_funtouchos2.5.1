.class public Lcom/vivo/settings/applications/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/applications/DataUtils$HideInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DataUtilsHideAppManager"

.field private static mInstanceDataUtils:Lcom/vivo/settings/applications/DataUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/vivo/settings/applications/DataUtils;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/settings/applications/DataUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, "DataUtilsHideAppManager"

    const-string v1, "DataUtils calling getInstance !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v0, Lcom/vivo/settings/applications/DataUtils;->mInstanceDataUtils:Lcom/vivo/settings/applications/DataUtils;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/vivo/settings/applications/DataUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/settings/applications/DataUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/settings/applications/DataUtils;->mInstanceDataUtils:Lcom/vivo/settings/applications/DataUtils;

    .line 32
    :cond_0
    sget-object v0, Lcom/vivo/settings/applications/DataUtils;->mInstanceDataUtils:Lcom/vivo/settings/applications/DataUtils;

    return-object v0
.end method


# virtual methods
.method public deleteFromHideAppsListByPkgName(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v2, p0, Lcom/vivo/settings/applications/DataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 215
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/vivo/settings/applications/HideApp$HideAppsList;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "pkgname=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "deleteRet":I
    const-string v2, "DataUtilsHideAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " delete by pkg name Ret is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v0
.end method

.method public deleteHideAppsListTable()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v2, p0, Lcom/vivo/settings/applications/DataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 224
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/vivo/settings/applications/HideApp$HideAppsList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, "deleteRet":I
    const-string v2, "DataUtilsHideAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " delete table Ret is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v0
.end method

.method public getPkgNamesFromHideAppsListByForbidVal(I)Ljava/util/ArrayList;
    .locals 16
    .param p1, "forbidNot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/applications/DataUtils$HideInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    const-string v2, "DataUtilsHideAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  forbidNotification is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v10, 0x0

    .line 134
    .local v10, "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    const/4 v12, 0x0

    .line 135
    .local v12, "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/applications/DataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 136
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 141
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/vivo/settings/applications/HideApp$HideAppsList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pkgname"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "uid"

    aput-object v5, v3, v4

    const-string v4, "forbidnet=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 143
    if-eqz v7, :cond_0

    move-object v13, v12

    .local v13, "tmpInfo":Ljava/lang/Object;
    move-object v11, v10

    .line 144
    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .end local v12    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    .local v11, "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "pkgName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 147
    .local v14, "uid":I
    new-instance v12, Lcom/vivo/settings/applications/DataUtils$HideInfo;

    invoke-direct {v12}, Lcom/vivo/settings/applications/DataUtils$HideInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    .restart local v12    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    :try_start_2
    iput-object v9, v12, Lcom/vivo/settings/applications/DataUtils$HideInfo;->pkgName:Ljava/lang/String;

    .line 149
    .end local v13    # "tmpInfo":Ljava/lang/Object;
    iput v14, v12, Lcom/vivo/settings/applications/DataUtils$HideInfo;->uid:I

    .line 151
    const-string v2, "DataUtilsHideAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pkg Name is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; uid is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-nez v11, :cond_3

    .line 154
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 156
    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    :goto_1
    :try_start_3
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    const/4 v12, 0x0

    move-object v13, v12

    .restart local v13    # "tmpInfo":Ljava/lang/Object;
    move-object v11, v10

    .line 158
    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    goto :goto_0

    .line 161
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .end local v13    # "tmpInfo":Ljava/lang/Object;
    .end local v14    # "uid":I
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    :cond_0
    const-string v2, "DataUtilsHideAppManager"

    const-string v3, " no data item is exist !!!! "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    .end local v12    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    :goto_2
    if-eqz v7, :cond_1

    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_1
    :goto_3
    return-object v10

    .line 164
    .restart local v12    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    :catch_0
    move-exception v8

    .line 165
    .local v8, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    if-eqz v7, :cond_1

    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 167
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v7, :cond_2

    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 167
    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .end local v12    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v13    # "tmpInfo":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    move-object v12, v13

    .restart local v12    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    move-object v10, v11

    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    goto :goto_5

    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .end local v13    # "tmpInfo":Ljava/lang/Object;
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v14    # "uid":I
    :catchall_2
    move-exception v2

    move-object v10, v11

    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    goto :goto_5

    .line 164
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .end local v12    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    .end local v14    # "uid":I
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v13    # "tmpInfo":Ljava/lang/Object;
    :catch_1
    move-exception v8

    move-object v12, v13

    .restart local v12    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    move-object v10, v11

    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    goto :goto_4

    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .end local v13    # "tmpInfo":Ljava/lang/Object;
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v14    # "uid":I
    :catch_2
    move-exception v8

    move-object v10, v11

    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    goto :goto_4

    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    :cond_3
    move-object v10, v11

    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    goto :goto_1

    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .end local v12    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    .end local v14    # "uid":I
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v13    # "tmpInfo":Ljava/lang/Object;
    :cond_4
    move-object v12, v13

    .end local v13    # "tmpInfo":Ljava/lang/Object;
    .local v12, "tmpInfo":Ljava/lang/Object;
    move-object v10, v11

    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/DataUtils$HideInfo;>;"
    goto :goto_2
.end method

.method public getUidsFromHideAppsListByForbidVal(I)Ljava/util/ArrayList;
    .locals 12
    .param p1, "forbidNet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    const-string v1, "DataUtilsHideAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " forbidNet is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v9, 0x0

    .line 179
    .local v9, "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/vivo/settings/applications/DataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 182
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/vivo/settings/applications/HideApp$HideAppsList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "uid"

    aput-object v4, v2, v3

    const-string v3, "forbidnet=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 185
    const-string v1, "DataUtilsHideAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-eqz v7, :cond_0

    move-object v10, v9

    .line 188
    .end local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v10, "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 191
    .local v6, "appUid":I
    const-string v1, "DataUtilsHideAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " get appUid is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-nez v10, :cond_3

    .line 194
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    .end local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v9

    .line 197
    .end local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 200
    .end local v6    # "appUid":I
    .end local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    const-string v1, "DataUtilsHideAppManager"

    const-string v2, "get uid data item is not exist !!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :goto_2
    if-eqz v7, :cond_1

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_1
    :goto_3
    return-object v9

    .line 203
    :catch_0
    move-exception v8

    .line 204
    .local v8, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    if-eqz v7, :cond_1

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 206
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v7, :cond_2

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 206
    .end local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_5

    .line 203
    .end local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_4

    .end local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "appUid":I
    .restart local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    move-object v9, v10

    .end local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .end local v6    # "appUid":I
    .end local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    move-object v9, v10

    .end local v10    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "savedAppUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method public insertToHideAppsList(Ljava/lang/String;III)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "hided"    # I
    .param p4, "forbidnet"    # I

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "success":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/vivo/settings/applications/DataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 39
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v4, "pkgname"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v4, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    const-string v4, "hided"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v4, "forbidnet"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    sget-object v4, Lcom/vivo/settings/applications/HideApp$HideAppsList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 45
    .local v1, "result":Landroid/net/Uri;
    const-string v4, "DataUtilsHideAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-nez v1, :cond_0

    .line 49
    const-string v4, "DataUtilsHideAppManager"

    const-string v5, "insert data failed !!!!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return v2

    .line 52
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public queryFromHideAppsListByHidedVal(I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "hided"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v9, 0x0

    .line 89
    .local v9, "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/vivo/settings/applications/DataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 95
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/vivo/settings/applications/HideApp$HideAppsList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkgname"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hided= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 97
    if-eqz v6, :cond_0

    move-object v10, v9

    .line 98
    .end local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v10, "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "pkgName":Ljava/lang/String;
    const-string v1, "lzh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cmpName is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-nez v10, :cond_3

    .line 104
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v9

    .line 107
    .end local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 110
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const-string v1, "DataUtilsHideAppManager"

    const-string v2, "  data item is not exist !!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :goto_2
    if-eqz v6, :cond_1

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_1
    :goto_3
    return-object v9

    .line 113
    :catch_0
    move-exception v7

    .line 114
    .local v7, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    if-eqz v6, :cond_1

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 116
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v6, :cond_2

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 116
    .end local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_5

    .line 113
    .end local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    move-object v9, v10

    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4

    .end local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move-object v9, v10

    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object v9, v10

    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public queryFromHideAppsListByPkgName(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v8, 0x0

    .line 59
    .local v8, "isExist":Z
    iget-object v1, p0, Lcom/vivo/settings/applications/DataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 62
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/vivo/settings/applications/HideApp$HideAppsList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "pkgname"

    aput-object v4, v2, v3

    const-string v3, "pkgname=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 65
    const-string v1, "DataUtilsHideAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz v6, :cond_2

    .line 68
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_1

    .line 69
    const/4 v8, 0x1

    .line 80
    :goto_0
    if-eqz v6, :cond_0

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_0
    :goto_1
    return v8

    .line 71
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 74
    :cond_2
    const/4 v8, 0x0

    .line 75
    :try_start_1
    const-string v1, "DataUtilsHideAppManager"

    const-string v2, " data item is not exist !!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v7

    .line 78
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    if-eqz v6, :cond_0

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 80
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public updateHideAppsList(Ljava/lang/String;III)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "hided"    # I
    .param p4, "forbidnet"    # I

    .prologue
    .line 232
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/vivo/settings/applications/DataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "pkgname"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v3, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v3, "hided"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v3, "forbidnet"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    sget-object v3, Lcom/vivo/settings/applications/HideApp$HideAppsList;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "pkgname=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "updateRet":I
    const-string v3, "DataUtilsHideAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " update table Ret is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v1
.end method
