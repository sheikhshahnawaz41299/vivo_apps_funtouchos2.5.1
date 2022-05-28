.class public Lcom/vivo/settings/applications/ShowOrHideAppService;
.super Landroid/app/Service;
.source "ShowOrHideAppService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final ENTER_VISIT_MODE:I = 0x10

.field private static final MAX_TASKS:I = 0x15

.field private static final MODE_JUDGING:I = 0x2

.field private static final MSG_UNLOCK_FINISHING:I = 0x3

.field private static final PACKAGE_HIDE:I = 0x0

.field private static final PACKAGE_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShowOrHideAppService"

.field private static savedNum:I

.field private static visitMode:Z


# instance fields
.field private htHandlerThread:Landroid/os/HandlerThread;

.field private mCanExitMyService:Z

.field private mDataUtils:Lcom/vivo/settings/applications/DataUtils;

.field private mFlag:I

.field private mHandler:Landroid/os/Handler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSavedAppsUserId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedThirdAppsPkgName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/applications/DataUtils$HideInfo;",
            ">;"
        }
    .end annotation
.end field

.field private savedAppsSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/vivo/settings/applications/ShowOrHideAppService;->savedNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mPm:Landroid/content/pm/PackageManager;

    .line 52
    const/16 v0, 0x2200

    iput v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mFlag:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mCanExitMyService:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/applications/ShowOrHideAppService;)Lcom/vivo/settings/applications/DataUtils;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/applications/ShowOrHideAppService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;

    .prologue
    .line 43
    iget v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->savedAppsSize:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vivo/settings/applications/ShowOrHideAppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->exitMyService()V

    return-void
.end method

.method static synthetic access$102(Lcom/vivo/settings/applications/ShowOrHideAppService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->savedAppsSize:I

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/vivo/settings/applications/ShowOrHideAppService;->visitMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/applications/ShowOrHideAppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->startHomeLauncher()V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/settings/applications/ShowOrHideAppService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/applications/ShowOrHideAppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getSavedAppsUid()V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/settings/applications/ShowOrHideAppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->sendNetWorkingBroadcast()V

    return-void
.end method

.method static synthetic access$700(Lcom/vivo/settings/applications/ShowOrHideAppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getSavedThirdAppsPkgName()V

    return-void
.end method

.method static synthetic access$800(Lcom/vivo/settings/applications/ShowOrHideAppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->forbidThirdAppsNotification()V

    return-void
.end method

.method static synthetic access$900(Lcom/vivo/settings/applications/ShowOrHideAppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/ShowOrHideAppService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->clearRecentTask()V

    return-void
.end method

.method private clearRecentTask()V
    .locals 20

    .prologue
    .line 255
    const-string v16, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 256
    .local v2, "am":Landroid/app/ActivityManager;
    const/16 v16, 0x15

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v14

    .line 258
    .local v14, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    .line 259
    .local v9, "numTasks":I
    const-string v16, "ShowOrHideAppService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "clearRecentTask recent task num:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-nez v9, :cond_1

    .line 321
    :cond_0
    return-void

    .line 263
    :cond_1
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "android.intent.category.HOME"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 265
    .local v4, "homeInfo":Landroid/content/pm/ActivityInfo;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    if-ge v5, v9, :cond_0

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ge v6, v0, :cond_0

    .line 267
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 268
    .local v13, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 269
    .local v3, "baseIntent":Landroid/content/Intent;
    iget-object v10, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 270
    .local v10, "origActivity":Landroid/content/ComponentName;
    iget v11, v13, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 271
    .local v11, "persistentTaskId":I
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 272
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_2

    .line 273
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 275
    :cond_2
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 276
    .local v12, "pkgName":Ljava/lang/String;
    const-string v16, "ShowOrHideAppService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "clearRecentTask pkgName is : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz v4, :cond_4

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 266
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 282
    :cond_4
    const-string v16, "com.bbk.SuperPowerSave"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 283
    const-string v16, "ShowOrHideAppService"

    const-string v17, "don\'t deal with com.bbk.SuperPowerSave !"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    :cond_5
    invoke-static {}, Lcom/android/settings/AppFeature;->getROMVersion()D

    move-result-wide v16

    const-wide v18, 0x4003eb851eb851ecL    # 2.49

    cmpg-double v16, v16, v18

    if-gez v16, :cond_6

    const-string v16, "com.bbk.theme"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 287
    const-string v16, "ShowOrHideAppService"

    const-string v17, "don\'t deal with com.bbk.theme !"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    :cond_6
    if-eqz v2, :cond_3

    .line 293
    const-string v16, "com.android.VideoPlayer"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    move-object/from16 v16, v0

    const-string v17, "com.android.VideoPlayer"

    invoke-virtual/range {v16 .. v17}, Lcom/vivo/settings/applications/DataUtils;->queryFromHideAppsListByPkgName(Ljava/lang/String;)Z

    move-result v8

    .line 295
    .local v8, "isExsit":Z
    const-string v16, "ShowOrHideAppService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "clearRecentTask com.android.VideoPlayer isExsit:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-eqz v8, :cond_3

    .line 297
    invoke-virtual {v2, v11}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_1

    .line 299
    .end local v8    # "isExsit":Z
    :cond_7
    const-string v16, "com.bbk.searchbox"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    move-object/from16 v16, v0

    const-string v17, "com.bbk.searchbox"

    invoke-virtual/range {v16 .. v17}, Lcom/vivo/settings/applications/DataUtils;->queryFromHideAppsListByPkgName(Ljava/lang/String;)Z

    move-result v8

    .line 301
    .restart local v8    # "isExsit":Z
    const-string v16, "ShowOrHideAppService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "clearRecentTask com.bbk.searchbox isExsit:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-eqz v8, :cond_3

    .line 303
    invoke-virtual {v2, v11}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto/16 :goto_1

    .line 305
    .end local v8    # "isExsit":Z
    :cond_8
    const-string v16, "com.android.gallery3d"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    move-object/from16 v16, v0

    const-string v17, "com.android.gallery3d"

    invoke-virtual/range {v16 .. v17}, Lcom/vivo/settings/applications/DataUtils;->queryFromHideAppsListByPkgName(Ljava/lang/String;)Z

    move-result v8

    .line 307
    .restart local v8    # "isExsit":Z
    const-string v16, "ShowOrHideAppService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "clearRecentTask com.android.gallery3d isExsit:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz v8, :cond_3

    .line 309
    invoke-virtual {v2, v11}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto/16 :goto_1

    .line 311
    .end local v8    # "isExsit":Z
    :cond_9
    const-string v16, "com.android.bbksoundrecorder"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    move-object/from16 v16, v0

    const-string v17, "com.android.bbksoundrecorder"

    invoke-virtual/range {v16 .. v17}, Lcom/vivo/settings/applications/DataUtils;->queryFromHideAppsListByPkgName(Ljava/lang/String;)Z

    move-result v8

    .line 313
    .restart local v8    # "isExsit":Z
    const-string v16, "ShowOrHideAppService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "clearRecentTask com.android.bbksoundrecorder isExsit:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz v8, :cond_3

    .line 315
    const-string v16, "com.android.bbksoundrecorder"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private exitHandlerThread()V
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->htHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "ShowOrHideAppService"

    const-string v2, "calling exitHandlerThread !!! "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->htHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 327
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 331
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method private exitMyService()V
    .locals 3

    .prologue
    .line 334
    const-string v0, "ShowOrHideAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitMyService mCanExitMyService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mCanExitMyService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-boolean v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mCanExitMyService:Z

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->stopSelf()V

    .line 338
    :cond_0
    return-void
.end method

.method private forbidThirdAppsNotification()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 216
    const-string v5, "ShowOrHideAppService"

    const-string v6, "calling forbidThirdAppsNotification !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v5, "ShowOrHideAppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSavedThirdAppsPkgName size is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedThirdAppsPkgName:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v4, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedThirdAppsPkgName:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedThirdAppsPkgName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 221
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 223
    .local v2, "nm":Landroid/app/INotificationManager;
    iget-object v4, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedThirdAppsPkgName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/applications/DataUtils$HideInfo;

    .line 224
    .local v3, "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    const-string v4, "ShowOrHideAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/vivo/settings/applications/DataUtils$HideInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ; uid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/vivo/settings/applications/DataUtils$HideInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-boolean v4, Lcom/vivo/settings/applications/ShowOrHideAppService;->visitMode:Z

    if-eqz v4, :cond_1

    .line 227
    :try_start_0
    iget-object v4, v3, Lcom/vivo/settings/applications/DataUtils$HideInfo;->pkgName:Ljava/lang/String;

    iget v5, v3, Lcom/vivo/settings/applications/DataUtils$HideInfo;->uid:I

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "ShowOrHideAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " RemoteException is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 218
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "nm":Landroid/app/INotificationManager;
    .end local v3    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedThirdAppsPkgName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto/16 :goto_0

    .line 233
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "nm":Landroid/app/INotificationManager;
    .restart local v3    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    :cond_1
    :try_start_1
    iget-object v4, v3, Lcom/vivo/settings/applications/DataUtils$HideInfo;->pkgName:Ljava/lang/String;

    iget v5, v3, Lcom/vivo/settings/applications/DataUtils$HideInfo;->uid:I

    const/4 v6, 0x1

    invoke-interface {v2, v4, v5, v6}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 234
    :catch_1
    move-exception v0

    .line 235
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v4, "ShowOrHideAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  RemoteException is  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 240
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "nm":Landroid/app/INotificationManager;
    .end local v3    # "tmpInfo":Lcom/vivo/settings/applications/DataUtils$HideInfo;
    :cond_2
    return-void
.end method

.method private getSavedAppsUid()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "ShowOrHideAppService"

    const-string v1, "calling getSavedAppsName !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/applications/DataUtils;->getUidsFromHideAppsListByForbidVal(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedAppsUserId:Ljava/util/ArrayList;

    .line 206
    return-void
.end method

.method private getSavedThirdAppsPkgName()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "ShowOrHideAppService"

    const-string v1, "calling getSavedThirdAppsPkgName !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/applications/DataUtils;->getPkgNamesFromHideAppsListByForbidVal(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedThirdAppsPkgName:Ljava/util/ArrayList;

    .line 213
    return-void
.end method

.method private sendNetWorkingBroadcast()V
    .locals 4

    .prologue
    .line 243
    const-string v1, "ShowOrHideAppService"

    const-string v2, "calling sendNetWorkingBroadcast !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v2, "ShowOrHideAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSavedAppsUserId size is : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedAppsUserId:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedAppsUserId:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedAppsUserId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.visitmode.control.networking"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "control_networking_with_uids"

    iget-object v2, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedAppsUserId:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mSavedAppsUserId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method private startHomeLauncher()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 341
    const-string v6, "sys.super_power_save"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 342
    .local v4, "isPowSave":Z
    invoke-virtual {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vivo_unlock_finishing"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 343
    .local v5, "unlockFinishing":I
    const-string v6, "ShowOrHideAppService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startHomeLauncher isPowSave:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " unlockFinishing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mCanExitMyService:Z

    .line 347
    if-eqz v4, :cond_0

    .line 380
    :goto_0
    return-void

    .line 351
    :cond_0
    if-eqz v5, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vivo_unlock_finishing"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    iput-boolean v9, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mCanExitMyService:Z

    .line 354
    iget-object v6, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 360
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 362
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_2

    .line 363
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 364
    .local v2, "homePkgName":Ljava/lang/String;
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 365
    .local v0, "homeClsName":Ljava/lang/String;
    const-string v6, "ShowOrHideAppService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startHomeLauncher homePkgName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " homeClsName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 367
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const v6, 0x10114000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 373
    if-eqz v3, :cond_2

    .line 374
    invoke-virtual {p0, v3}, Lcom/vivo/settings/applications/ShowOrHideAppService;->startActivity(Landroid/content/Intent;)V

    .line 379
    .end local v0    # "homeClsName":Ljava/lang/String;
    .end local v2    # "homePkgName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v6, "ShowOrHideAppService"

    const-string v7, "startHomeLauncher done ---------------"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    const-string v0, "ShowOrHideAppService"

    const-string v1, " ShowOrHideAppService.onBind !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 62
    const-string v0, "ShowOrHideAppService"

    const-string v1, "======> + ShowOrHideAppService.onCreate !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mPm:Landroid/content/pm/PackageManager;

    .line 64
    invoke-static {p0}, Lcom/vivo/settings/applications/DataUtils;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/applications/DataUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mDataUtils:Lcom/vivo/settings/applications/DataUtils;

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "hideorshowapp"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->htHandlerThread:Landroid/os/HandlerThread;

    .line 66
    iget-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->htHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;

    iget-object v1, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->htHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/settings/applications/ShowOrHideAppService$1;-><init>(Lcom/vivo/settings/applications/ShowOrHideAppService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mHandler:Landroid/os/Handler;

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "ShowOrHideAppService"

    const-string v1, " ShowOrHideAppService.onDestroy !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->exitHandlerThread()V

    .line 161
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 162
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    const-string v2, "ShowOrHideAppService"

    const-string v3, "ShowOrHideAppService.onStartCommand !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/vivo/settings/applications/ShowOrHideAppService;->visitMode:Z

    .line 169
    const-string v0, "ShowOrHideAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visitMode is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/settings/applications/ShowOrHideAppService;->visitMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/vivo/settings/applications/ShowOrHideAppService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    const/4 p2, 0x2

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 175
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 168
    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/settings/applications/ShowOrHideAppService;->stopSelf()V

    .line 175
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    const-string v0, "ShowOrHideAppService"

    const-string v1, "ShowOrHideAppService.onUnbind "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
