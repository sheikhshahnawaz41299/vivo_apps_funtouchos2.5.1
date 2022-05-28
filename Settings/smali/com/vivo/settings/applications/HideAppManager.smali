.class public Lcom/vivo/settings/applications/HideAppManager;
.super Lcom/vivo/app/VivoBaseListActivity;
.source "HideAppManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;,
        Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;,
        Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_RETRY_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HideAppManager"


# instance fields
.field private final GALLERY:Ljava/lang/String;

.field private final GALLERY1:Ljava/lang/String;

.field private dialerInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

.field private isCameraExist:Z

.field private mAppInfoAdapter:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

.field private mDataUtils:Lcom/vivo/settings/applications/DataUtils;

.field private mLauncherAppsInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncherAppsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSavedAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedHideAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

.field private themeInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

.field private unnecessaryHideApps:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseListActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->mLauncherAppsInfos:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    .line 61
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.BBKClock"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.vivo.weather"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.yahoo.mobile.client.android.weather"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.bbkcalculator"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.bbkflashlight"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.bbk.lockscreen2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.bbk.lockscreen3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.vivo.FMRadio"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.quicinc.fmradio"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.adobe.flashplayer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.bbkmusic"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->unnecessaryHideApps:[Ljava/lang/String;

    .line 75
    iput-boolean v3, p0, Lcom/vivo/settings/applications/HideAppManager;->isCameraExist:Z

    .line 76
    const-string v0, "\u56fe\u5e93"

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->GALLERY:Ljava/lang/String;

    .line 77
    const-string v0, "Gallery"

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->GALLERY1:Ljava/lang/String;

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/applications/HideAppManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/HideAppManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vivo/settings/applications/HideAppManager;->saveSelectedItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/applications/HideAppManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/HideAppManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vivo/settings/applications/HideAppManager;->isCameraExist:Z

    return v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/applications/HideAppManager;)Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/HideAppManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->mAppInfoAdapter:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/applications/HideAppManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/HideAppManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/settings/applications/HideAppManager;)Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/HideAppManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    return-object v0
.end method

.method private getAllLauncherApps()V
    .locals 14

    .prologue
    .line 218
    const/4 v11, 0x0

    .line 219
    .local v11, "temInfo":Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    const/4 v6, 0x0

    .line 220
    .local v6, "isUnHideApp":Z
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mLauncherAppsMap:Ljava/util/HashMap;

    .line 221
    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mLauncherAppsInfos:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    .line 222
    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mLauncherAppsInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 224
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    .local v8, "mainIntent":Landroid/content/Intent;
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 227
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/vivo/settings/applications/HideAppManager;->getSavedItems()Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mSavedAppsName:Ljava/util/ArrayList;

    .line 228
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 229
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 230
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 232
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->unnecessaryHideApps:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v1, v3, v5

    .line 233
    .local v1, "appName":Ljava/lang/String;
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 234
    const/4 v6, 0x1

    .line 238
    .end local v1    # "appName":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_3

    .line 239
    const/4 v6, 0x0

    .line 240
    goto :goto_0

    .line 232
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 244
    .end local v1    # "appName":Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mLauncherAppsMap:Ljava/util/HashMap;

    invoke-virtual {v12, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    if-eqz v11, :cond_4

    .line 246
    const/4 v11, 0x0

    .line 248
    :cond_4
    new-instance v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    .end local v11    # "temInfo":Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;-><init>(Lcom/vivo/settings/applications/HideAppManager;Lcom/vivo/settings/applications/HideAppManager$1;)V

    .line 249
    .restart local v11    # "temInfo":Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    .line 250
    iget-object v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    if-nez v12, :cond_5

    .line 251
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    .line 253
    :cond_5
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    .line 254
    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->userId:I

    .line 255
    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mSavedAppsName:Ljava/util/ArrayList;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mSavedAppsName:Ljava/util/ArrayList;

    iget-object v13, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    :cond_6
    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    iget-object v13, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 257
    :cond_7
    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    .line 261
    :goto_2
    iget v12, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_a

    .line 263
    :cond_8
    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isThirdApp:Z

    .line 272
    :goto_3
    iget-object v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v13, "com.android.mms"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 273
    iput-object v11, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    goto/16 :goto_0

    .line 259
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    goto :goto_2

    .line 265
    :cond_a
    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isThirdApp:Z

    goto :goto_3

    .line 275
    :cond_b
    iget-object v12, v11, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v13, "com.android.dialer"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 276
    iput-object v11, p0, Lcom/vivo/settings/applications/HideAppManager;->dialerInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    goto/16 :goto_0

    .line 279
    :cond_c
    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mLauncherAppsInfos:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 281
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_d
    iget-object v12, p0, Lcom/vivo/settings/applications/HideAppManager;->mLauncherAppsInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v12}, Lcom/vivo/settings/applications/HideAppManager;->removeDuplicate(Ljava/util/ArrayList;)V

    .line 282
    return-void
.end method

.method private getSavedItems()Ljava/util/ArrayList;
    .locals 3
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
    .line 187
    const-string v1, "HideAppManager"

    const-string v2, "calling getSavedItems !!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/vivo/settings/applications/HideAppManager;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vivo/settings/applications/DataUtils;->queryFromHideAppsListByHidedVal(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    .local v0, "savedAppsName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method private removeDuplicate(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 430
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_1

    .line 431
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget-object v3, v2, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget-object v2, v2, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const-string v3, "HideAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resultList remove name is : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget-object v2, v2, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 430
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 429
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private saveAppItem(Ljava/lang/String;IZZ)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "hide"    # Z
    .param p4, "forbidnet"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "insertRet":Z
    iget-object v6, p0, Lcom/vivo/settings/applications/HideAppManager;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    if-eqz p3, :cond_0

    move v5, v3

    :goto_0
    if-eqz p4, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v6, p1, p2, v5, v2}, Lcom/vivo/settings/applications/DataUtils;->insertToHideAppsList(Ljava/lang/String;III)Z

    move-result v0

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "retryCount":I
    :goto_2
    if-nez v0, :cond_4

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 178
    iget-object v6, p0, Lcom/vivo/settings/applications/HideAppManager;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    if-eqz p3, :cond_2

    move v5, v3

    :goto_3
    if-eqz p4, :cond_3

    move v2, v3

    :goto_4
    invoke-virtual {v6, p1, p2, v5, v2}, Lcom/vivo/settings/applications/DataUtils;->insertToHideAppsList(Ljava/lang/String;III)Z

    move-result v0

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "retryCount":I
    :cond_0
    move v5, v4

    .line 173
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .restart local v1    # "retryCount":I
    :cond_2
    move v5, v4

    .line 178
    goto :goto_3

    :cond_3
    move v2, v4

    goto :goto_4

    .line 182
    :cond_4
    const-string v2, "HideAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " saveAppItem insertRet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method private saveSelectedItems()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 125
    const/4 v4, 0x0

    .line 126
    .local v4, "insertRet":Z
    iget-object v7, p0, Lcom/vivo/settings/applications/HideAppManager;->mSavedAppsName:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 127
    iget-object v7, p0, Lcom/vivo/settings/applications/HideAppManager;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    invoke-virtual {v7}, Lcom/vivo/settings/applications/DataUtils;->deleteHideAppsListTable()I

    move-result v2

    .line 128
    .local v2, "deleteRet":I
    const-string v7, "HideAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " deleteRet is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v2    # "deleteRet":I
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "apps"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 131
    .local v6, "toHideAppsValue":I
    const-string v7, "HideAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " toHideAppsValue is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "appHasSeleted":Z
    const/4 v5, 0x0

    .line 134
    .local v5, "retryCount":I
    iget-object v7, p0, Lcom/vivo/settings/applications/HideAppManager;->mLauncherAppsInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    .line 135
    .local v1, "appInfo":Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    iget-boolean v7, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    if-eqz v7, :cond_1

    .line 136
    iget-object v10, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    iget v11, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->userId:I

    iget-boolean v12, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    iget-boolean v7, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    if-eqz v7, :cond_4

    iget-boolean v7, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isThirdApp:Z

    if-eqz v7, :cond_4

    move v7, v8

    :goto_1
    invoke-direct {p0, v10, v11, v12, v7}, Lcom/vivo/settings/applications/HideAppManager;->saveAppItem(Ljava/lang/String;IZZ)V

    .line 138
    iget-object v7, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v10, "com.android.contacts"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 139
    iget-object v7, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    if-eqz v7, :cond_2

    .line 140
    iget-object v7, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget-object v10, v7, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    iget-object v7, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget v11, v7, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->userId:I

    iget-boolean v12, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    iget-boolean v7, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    if-eqz v7, :cond_5

    iget-boolean v7, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isThirdApp:Z

    if-eqz v7, :cond_5

    move v7, v8

    :goto_2
    invoke-direct {p0, v10, v11, v12, v7}, Lcom/vivo/settings/applications/HideAppManager;->saveAppItem(Ljava/lang/String;IZZ)V

    .line 143
    :cond_2
    iget-object v7, p0, Lcom/vivo/settings/applications/HideAppManager;->dialerInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    if-eqz v7, :cond_3

    .line 144
    iget-object v7, p0, Lcom/vivo/settings/applications/HideAppManager;->dialerInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget-object v10, v7, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    iget-object v7, p0, Lcom/vivo/settings/applications/HideAppManager;->dialerInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget v11, v7, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->userId:I

    iget-boolean v12, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    iget-boolean v7, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    if-eqz v7, :cond_6

    iget-boolean v7, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isThirdApp:Z

    if-eqz v7, :cond_6

    move v7, v8

    :goto_3
    invoke-direct {p0, v10, v11, v12, v7}, Lcom/vivo/settings/applications/HideAppManager;->saveAppItem(Ljava/lang/String;IZZ)V

    .line 148
    :cond_3
    if-nez v0, :cond_1

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v7, v9

    .line 136
    goto :goto_1

    :cond_5
    move v7, v9

    .line 140
    goto :goto_2

    :cond_6
    move v7, v9

    .line 144
    goto :goto_3

    .line 153
    .end local v1    # "appInfo":Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    :cond_7
    const-string v7, "HideAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appHasSeleted value is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz v0, :cond_9

    .line 155
    if-nez v6, :cond_8

    .line 156
    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "apps"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    const/4 v6, 0x1

    .line 162
    :cond_8
    :goto_4
    const-string v7, "HideAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " hide apps value is : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "apps"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-wide/16 v8, 0xc8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_5
    return-void

    .line 159
    :cond_9
    if-ne v6, v8, :cond_8

    .line 160
    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "apps"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 166
    :catch_0
    move-exception v7

    goto :goto_5
.end method

.method private showTitle()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->showTitleLeftButton()V

    .line 107
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/HideAppManager;->setTitleLeftButtonIcon(I)V

    .line 108
    new-instance v0, Lcom/vivo/settings/applications/HideAppManager$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/applications/HideAppManager$1;-><init>(Lcom/vivo/settings/applications/HideAppManager;)V

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/HideAppManager;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->showTitleRightButton()V

    .line 114
    const v0, 0x7f0b00cd

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/HideAppManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/HideAppManager;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v0, Lcom/vivo/settings/applications/HideAppManager$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/applications/HideAppManager$2;-><init>(Lcom/vivo/settings/applications/HideAppManager;)V

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/HideAppManager;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v1, 0x7f040060

    invoke-virtual {p0, v1}, Lcom/vivo/settings/applications/HideAppManager;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/vivo/settings/applications/HideAppManager;->showTitle()V

    .line 91
    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/applications/HideAppManager;->mPm:Landroid/content/pm/PackageManager;

    .line 92
    invoke-static {p0}, Lcom/vivo/settings/applications/DataUtils;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/applications/DataUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/applications/HideAppManager;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "cameraInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v1, p0, Lcom/vivo/settings/applications/HideAppManager;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.camera"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_0
    if-eqz v0, :cond_0

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/settings/applications/HideAppManager;->isCameraExist:Z

    .line 102
    :cond_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onDestroy()V

    .line 83
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 393
    const v3, 0x7f0e0114

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 394
    .local v1, "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mAppInfoAdapter:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    invoke-virtual {v3, p3}, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    .line 395
    .local v0, "appItemInfo":Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    iget-boolean v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    .line 396
    .local v2, "isSelected":Z
    const-string v3, "HideAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg name is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; app lable is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isSelected is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    if-nez v2, :cond_3

    .line 399
    iput-boolean v6, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    .line 400
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 401
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 402
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    .line 404
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_1
    iget-object v3, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    if-eqz v3, :cond_2

    .line 408
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iput-boolean v6, v3, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    .line 410
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_2
    :goto_0
    return-void

    .line 417
    :cond_3
    iput-boolean v7, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    .line 418
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 419
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    iget-object v3, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 421
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vivo/settings/applications/HideAppManager;->mmsInfo:Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 423
    :cond_4
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager;->mSelectedHideAppsList:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onPause()V

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onResume()V

    .line 197
    const-string v0, "HideAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onResume()  is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "visit_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->finish()V

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/applications/HideAppManager;->getAllLauncherApps()V

    .line 202
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->mAppInfoAdapter:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v1, p0, Lcom/vivo/settings/applications/HideAppManager;->mLauncherAppsInfos:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v4, v1}, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;-><init>(Lcom/vivo/settings/applications/HideAppManager;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->mAppInfoAdapter:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    .line 204
    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/applications/HideAppManager;->mAppInfoAdapter:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    invoke-virtual {p0}, Lcom/vivo/settings/applications/HideAppManager;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppManager;->mAppInfoAdapter:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    invoke-virtual {v0}, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->notifyDataSetChanged()V

    .line 209
    return-void
.end method
