.class Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;
.super Landroid/os/AsyncTask;
.source "UsageAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsRequestingAccessFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/ArrayMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/settings/UsageAccessSettings$PackageEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/settings/UsageAccessSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/UsageAccessSettings;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 89
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 90
    return-void
.end method

.method private updatePreference(Lcom/android/settings/UsageAccessSettings$PackageEntry;)V
    .locals 4
    .param p1, "pe"    # Lcom/android/settings/UsageAccessSettings$PackageEntry;

    .prologue
    .line 225
    iget-object v1, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    iget-object v2, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/settings/AsyncCheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v1, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    iget-object v2, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/settings/AsyncCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    iget-object v2, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vivo/settings/AsyncCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "check":Z
    iget v1, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->appOpMode:I

    if-nez v1, :cond_2

    .line 231
    const/4 v0, 0x1

    .line 238
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    invoke-virtual {v1}, Lcom/vivo/settings/AsyncCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 239
    iget-object v1, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/vivo/settings/AsyncCheckBoxPreference;->setChecked(Z)V

    .line 241
    :cond_1
    return-void

    .line 232
    :cond_2
    iget v1, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->appOpMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 235
    iget-boolean v0, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->permissionGranted:Z

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/ArrayMap;
    .locals 21
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UsageAccessSettings$PackageEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v18, v0

    const-string v19, "android.permission.PACKAGE_USAGE_STATS"

    invoke-interface/range {v18 .. v19}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 104
    .local v16, "packages":[Ljava/lang/String;
    if-nez v16, :cond_1

    .line 106
    const/4 v4, 0x0

    .line 174
    .end local v16    # "packages":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 98
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Landroid/os/RemoteException;
    const-string v18, "UsageAccessSettings"

    const-string v19, "PackageManager is dead. Can\'t get list of packages requesting android.permission.PACKAGE_USAGE_STATS"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v4, 0x0

    goto :goto_0

    .line 109
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v16    # "packages":[Ljava/lang/String;
    :cond_1
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 110
    .local v4, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/UsageAccessSettings$PackageEntry;>;"
    move-object/from16 v2, v16

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v12, v2, v6

    .line 111
    .local v12, "packageName":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/UsageAccessSettings;->shouldIgnorePackage(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 112
    new-instance v18, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lcom/android/settings/UsageAccessSettings$PackageEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 117
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/android/settings/UsageAccessSettings;->access$000()[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 119
    .local v11, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 120
    .local v10, "packageInfoCount":I
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v10, :cond_6

    .line 121
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 122
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    .line 123
    .local v17, "pe":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    if-eqz v17, :cond_4

    .line 124
    move-object/from16 v0, v17

    iput-object v9, v0, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 125
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->permissionGranted:Z

    .line 120
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 119
    .end local v5    # "i":I
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "packageInfoCount":I
    .end local v17    # "pe":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 131
    .restart local v5    # "i":I
    .restart local v10    # "packageInfoCount":I
    :cond_6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 132
    .local v8, "packageCount":I
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v8, :cond_8

    .line 133
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    .line 134
    .restart local v17    # "pe":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 136
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageInfo:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 137
    :catch_1
    move-exception v3

    .line 140
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 141
    add-int/lit8 v5, v5, -0x1

    .line 142
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 148
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "pe":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageAccessSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/android/settings/UsageAccessSettings;->access$100()[I

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v14

    .line 150
    .local v14, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v14, :cond_a

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 151
    .local v15, "packageOpsCount":I
    :goto_6
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v15, :cond_0

    .line 152
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$PackageOps;

    .line 153
    .local v13, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    .line 154
    .restart local v17    # "pe":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    if-nez v17, :cond_b

    .line 155
    const-string v18, "UsageAccessSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AppOp permission exists for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but package doesn\'t exist or did not request UsageStats access"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_9
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 150
    .end local v13    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v15    # "packageOpsCount":I
    .end local v17    # "pe":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    :cond_a
    const/4 v15, 0x0

    goto :goto_6

    .line 160
    .restart local v13    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .restart local v15    # "packageOpsCount":I
    .restart local v17    # "pe":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    :cond_b
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 165
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 166
    const-string v18, "UsageAccessSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "No AppOps permission exists for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 171
    :cond_c
    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->appOpMode:I

    goto :goto_8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->doInBackground([Ljava/lang/Void;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UsageAccessSettings$PackageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "newEntries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/UsageAccessSettings$PackageEntry;>;"
    iget-object v6, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/settings/UsageAccessSettings;->access$202(Lcom/android/settings/UsageAccessSettings;Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;)Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    .line 181
    iget-object v6, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/UsageAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 222
    :goto_0
    return-void

    .line 186
    :cond_0
    if-nez p1, :cond_1

    .line 187
    iget-object v6, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    iget-object v6, v6, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 188
    iget-object v6, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    iget-object v6, v6, Lcom/android/settings/UsageAccessSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v6, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    iget-object v6, v6, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 194
    .local v2, "oldPackageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 195
    iget-object v6, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    iget-object v6, v6, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    .line 196
    .local v3, "oldPackageEntry":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    iget-object v6, v3, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    .line 197
    .local v1, "newPackageEntry":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    if-nez v1, :cond_2

    .line 199
    iget-object v6, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    iget-object v6, v6, Lcom/android/settings/UsageAccessSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, v3, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_2
    iget-object v6, v3, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    iput-object v6, v1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    goto :goto_2

    .line 208
    .end local v1    # "newPackageEntry":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    .end local v3    # "oldPackageEntry":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    :cond_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 209
    .local v4, "packageCount":I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_5

    .line 210
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    .line 211
    .local v5, "packageEntry":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    iget-object v6, v5, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    if-nez v6, :cond_4

    .line 212
    new-instance v6, Lcom/vivo/settings/AsyncCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/vivo/settings/AsyncCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    .line 213
    iget-object v6, v5, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/vivo/settings/AsyncCheckBoxPreference;->setPersistent(Z)V

    .line 214
    iget-object v6, v5, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    invoke-virtual {v6, v7}, Lcom/vivo/settings/AsyncCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    iget-object v6, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    iget-object v6, v6, Lcom/android/settings/UsageAccessSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, v5, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->updatePreference(Lcom/android/settings/UsageAccessSettings$PackageEntry;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 220
    .end local v5    # "packageEntry":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    iget-object v6, v6, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 221
    iget-object v6, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    iput-object p1, v6, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Landroid/util/ArrayMap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->onPostExecute(Landroid/util/ArrayMap;)V

    return-void
.end method
