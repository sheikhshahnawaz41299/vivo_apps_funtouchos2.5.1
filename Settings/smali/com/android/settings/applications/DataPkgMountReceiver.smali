.class public Lcom/android/settings/applications/DataPkgMountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataPkgMountReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataPkgMountReceiver"


# instance fields
.field private MODE:I

.field private mContext:Landroid/content/Context;

.field private mDataUtils:Lcom/vivo/settings/applications/DataUtils;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/applications/DataPkgMountReceiver;->MODE:I

    return-void
.end method

.method private chageHideAppDBValue(Z)V
    .locals 9
    .param p1, "existInDB"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 96
    const-string v5, "DataPkgMountReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling chageHideAppDBValue and existInDB is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v5, p0, Lcom/android/settings/applications/DataPkgMountReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "visit_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 101
    .local v3, "visitModeValue":I
    const-string v5, "DataPkgMountReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " visitModeValue is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-ne v3, v8, :cond_2

    .line 103
    const-string v4, "DataPkgMountReceiver"

    const-string v5, "is in visit mode , nothing need to do !"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_2
    iget-object v5, p0, Lcom/android/settings/applications/DataPkgMountReceiver;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    invoke-virtual {v5, v8}, Lcom/vivo/settings/applications/DataUtils;->queryFromHideAppsListByHidedVal(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    .local v0, "savedAppsName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_3

    move v1, v4

    .line 108
    .local v1, "savedAppsNum":I
    :goto_1
    const-string v5, "DataPkgMountReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " savedAppsNum is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v5, p0, Lcom/android/settings/applications/DataPkgMountReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "apps"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 110
    .local v2, "toHideAppsValue":I
    const-string v5, "DataPkgMountReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " toHideAppsValue is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-lez v1, :cond_4

    if-nez v2, :cond_4

    .line 112
    iget-object v4, p0, Lcom/android/settings/applications/DataPkgMountReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "apps"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 107
    .end local v1    # "savedAppsNum":I
    .end local v2    # "toHideAppsValue":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    .line 113
    .restart local v1    # "savedAppsNum":I
    .restart local v2    # "toHideAppsValue":I
    :cond_4
    if-nez v1, :cond_0

    if-ne v2, v8, :cond_0

    .line 114
    iget-object v5, p0, Lcom/android/settings/applications/DataPkgMountReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "apps"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-static {}, Lcom/android/settings/AppFeature;->isDeviceSupportTF()Z

    move-result v7

    .line 35
    .local v7, "isTFSupport":Z
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isTFSupport is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "action":Ljava/lang/String;
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v6, 0x0

    .line 39
    .local v6, "isExist":Z
    invoke-static/range {p1 .. p1}, Lcom/vivo/settings/applications/DataUtils;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/applications/DataUtils;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/applications/DataPkgMountReceiver;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    .line 40
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/applications/DataPkgMountReceiver;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 41
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/DataPkgMountReceiver;->mContext:Landroid/content/Context;

    .line 42
    const-string v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 44
    .local v4, "data":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 45
    .local v9, "pkgName":Ljava/lang/String;
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " removed pkgName is: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/DataPkgMountReceiver;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    invoke-virtual {v13, v9}, Lcom/vivo/settings/applications/DataUtils;->queryFromHideAppsListByPkgName(Ljava/lang/String;)Z

    move-result v6

    .line 47
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isExist is: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz v6, :cond_0

    .line 49
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/DataPkgMountReceiver;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    invoke-virtual {v13, v9}, Lcom/vivo/settings/applications/DataUtils;->deleteFromHideAppsListByPkgName(Ljava/lang/String;)I

    move-result v11

    .line 50
    .local v11, "ret":I
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "delete ret is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v11    # "ret":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/DataPkgMountReceiver;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 53
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "REMOVED_PKG_NAME"

    invoke-interface {v5, v13, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    const-string v13, "EXIST_IN_DB"

    invoke-interface {v5, v13, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/applications/DataPkgMountReceiver;->chageHideAppDBValue(Z)V

    .line 93
    .end local v4    # "data":Landroid/net/Uri;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    const-string v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 58
    const-string v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 59
    .local v10, "replaceAdd":Z
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "replaceAdd is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 61
    .restart local v4    # "data":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 62
    .restart local v9    # "pkgName":Ljava/lang/String;
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add pkgName is =: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-eqz v10, :cond_1

    .line 66
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/DataPkgMountReceiver;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v14, "REMOVED_PKG_NAME"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 67
    .local v12, "savedPkgName":Ljava/lang/String;
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " savedPkgName is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/DataPkgMountReceiver;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v14, "EXIST_IN_DB"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 69
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " isExist is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz v6, :cond_1

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 71
    const/4 v3, 0x0

    .line 73
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x2000

    invoke-virtual {v13, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 77
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/DataPkgMountReceiver;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    iget v14, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v9, v14, v15, v0}, Lcom/vivo/settings/applications/DataUtils;->insertToHideAppsList(Ljava/lang/String;III)Z

    move-result v11

    .line 79
    .local v11, "ret":Z
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insert ret is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v11    # "ret":Z
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/applications/DataPkgMountReceiver;->chageHideAppDBValue(Z)V

    goto/16 :goto_0

    .line 84
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "data":Landroid/net/Uri;
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "replaceAdd":Z
    .end local v12    # "savedPkgName":Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_1

    .line 87
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.settings.DATA_MOUNT_LOCATION"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v8, "mIntent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    const-string v13, "DataPkgMountReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " mIntent = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 74
    .end local v8    # "mIntent":Landroid/content/Intent;
    .restart local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "data":Landroid/net/Uri;
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v10    # "replaceAdd":Z
    .restart local v12    # "savedPkgName":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_1
.end method
