.class public Lcom/vivo/settings/applications/FactoryAppManager;
.super Lcom/vivo/app/VivoBaseListActivity;
.source "FactoryAppManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;,
        Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;,
        Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FactoryAppManager"


# instance fields
.field private final APK_EXIST:I

.field private final MSG_LIST_VIEW_ADD_ITEM:I

.field private final SCAN_ROOT_PATH:Ljava/lang/String;

.field private final SCAN_VIVO_PATH:Ljava/lang/String;

.field private final START_SEARCH:I

.field private final THREAD_CANCEL:I

.field private final THREAD_DONE:I

.field private final THREAD_DONE_UNNORMAL:I

.field private final THREAD_INITIAL:I

.field private final THREAD_RUNNING:I

.field private emptyText:Landroid/widget/TextView;

.field private mApkExist:Z

.field mApkFileLoader:Ljava/lang/Runnable;

.field private mApkFileLoaderHandler:Landroid/os/Handler;

.field private mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

.field private mEmpTextLayout:Landroid/widget/LinearLayout;

.field private mFileContainSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLeftButtonListener:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLoadApksThreadState:I

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private mPackageFileAdapter:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

.field private mPackageFileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageIntentReceiver:Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTmpPackageFileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseListActivity;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileAdapter:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

    .line 68
    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mListView:Landroid/widget/ListView;

    .line 70
    const-string v0, "/apps"

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->SCAN_ROOT_PATH:Ljava/lang/String;

    .line 71
    const-string v0, "/vivo-apps"

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->SCAN_VIVO_PATH:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mApkExist:Z

    .line 79
    iput v1, p0, Lcom/vivo/settings/applications/FactoryAppManager;->APK_EXIST:I

    .line 80
    iput v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->START_SEARCH:I

    .line 81
    iput v4, p0, Lcom/vivo/settings/applications/FactoryAppManager;->MSG_LIST_VIEW_ADD_ITEM:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mTmpPackageFileInfoList:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mFileNameList:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mFileContainSet:Ljava/util/HashSet;

    .line 94
    iput v2, p0, Lcom/vivo/settings/applications/FactoryAppManager;->THREAD_INITIAL:I

    .line 95
    iput v1, p0, Lcom/vivo/settings/applications/FactoryAppManager;->THREAD_RUNNING:I

    .line 96
    iput v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->THREAD_CANCEL:I

    .line 97
    iput v4, p0, Lcom/vivo/settings/applications/FactoryAppManager;->THREAD_DONE:I

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->THREAD_DONE_UNNORMAL:I

    .line 99
    iput v2, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLoadApksThreadState:I

    .line 174
    new-instance v0, Lcom/vivo/settings/applications/FactoryAppManager$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/applications/FactoryAppManager$1;-><init>(Lcom/vivo/settings/applications/FactoryAppManager;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLeftButtonListener:Landroid/view/View$OnClickListener;

    .line 235
    new-instance v0, Lcom/vivo/settings/applications/FactoryAppManager$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/applications/FactoryAppManager$2;-><init>(Lcom/vivo/settings/applications/FactoryAppManager;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mHandler:Landroid/os/Handler;

    .line 401
    new-instance v0, Lcom/vivo/settings/applications/FactoryAppManager$3;

    invoke-direct {v0, p0}, Lcom/vivo/settings/applications/FactoryAppManager$3;-><init>(Lcom/vivo/settings/applications/FactoryAppManager;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mApkFileLoader:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/applications/FactoryAppManager;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/applications/FactoryAppManager;->indexOfApplicationInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vivo/settings/applications/FactoryAppManager;)Lcom/vivo/settings/AsyncImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vivo/settings/applications/FactoryAppManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLoadApksThreadState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/vivo/settings/applications/FactoryAppManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLoadApksThreadState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mFileNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mFileContainSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/settings/applications/FactoryAppManager;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/FactoryAppManager;->getAllApkFiles(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLoadingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/applications/FactoryAppManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mApkExist:Z

    return v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mEmpTextLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/applications/FactoryAppManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/vivo/settings/applications/FactoryAppManager;->startSearchApk()V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mTmpPackageFileInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/settings/applications/FactoryAppManager;)Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileAdapter:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

    return-object v0
.end method

.method private exitHandlerThread()V
    .locals 2

    .prologue
    .line 575
    iget-object v1, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 577
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 581
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method private getAllApkFiles(Ljava/io/File;)V
    .locals 15
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 454
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 455
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".apk"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 458
    iget v12, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLoadApksThreadState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 459
    const/4 v12, 0x3

    iput v12, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLoadApksThreadState:I

    .line 541
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 462
    .restart local v4    # "fileName":Ljava/lang/String;
    :cond_1
    iget-object v12, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    if-nez v12, :cond_2

    .line 463
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    .line 465
    :cond_2
    new-instance v10, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;

    const/4 v12, 0x0

    invoke-direct {v10, p0, v12}, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;-><init>(Lcom/vivo/settings/applications/FactoryAppManager;Lcom/vivo/settings/applications/FactoryAppManager$1;)V

    .line 466
    .local v10, "packageFileInfo":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;
    iput-object v4, v10, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFileName:Ljava/lang/String;

    .line 467
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFilePath:Ljava/lang/String;

    .line 468
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    iput-wide v12, v10, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFileSize:J

    .line 469
    invoke-direct {p0, v10}, Lcom/vivo/settings/applications/FactoryAppManager;->loadPackageFileInfo(Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 473
    if-eqz v10, :cond_0

    .line 475
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mApkExist:Z

    .line 477
    invoke-direct {p0, v4}, Lcom/vivo/settings/applications/FactoryAppManager;->isNeedAdd(Ljava/lang/String;)Z

    move-result v8

    .line 479
    .local v8, "needAdd":Z
    const-string v12, "FactoryAppManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAllApkFiles add apk file name is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; get path is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; needAdd:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v12, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v8, :cond_0

    .line 484
    iget-object v12, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mTmpPackageFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v12, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v8    # "needAdd":Z
    .end local v10    # "packageFileInfo":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 492
    .local v5, "files":[Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isHidden()Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v5, :cond_0

    array-length v12, v5

    if-lez v12, :cond_0

    .line 494
    const-string v12, "ro.product.customize.bbk"

    const-string v13, "N"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "customize_bbk":Ljava/lang/String;
    const/4 v0, 0x0

    .line 496
    .local v0, "appFileStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 498
    .local v1, "appsFile":Ljava/io/File;
    const-string v12, "CN-YD"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 499
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/apps_YD.list"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    new-instance v1, Ljava/io/File;

    .end local v1    # "appsFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .restart local v1    # "appsFile":Ljava/io/File;
    :cond_4
    const-string v12, "FactoryAppManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAllApkFiles appsFile:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " customize_bbk:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 506
    invoke-direct {p0, v1}, Lcom/vivo/settings/applications/FactoryAppManager;->getContainAppList(Ljava/io/File;)V

    .line 531
    :cond_5
    :goto_1
    move-object v2, v5

    .local v2, "arr$":[Ljava/io/File;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_0

    aget-object v11, v2, v6

    .line 532
    .local v11, "tmpFile":Ljava/io/File;
    const-string v12, "FactoryAppManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAllApkFiles file:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget v12, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLoadApksThreadState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 534
    const/4 v12, 0x3

    iput v12, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLoadApksThreadState:I

    goto/16 :goto_0

    .line 508
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "tmpFile":Ljava/io/File;
    :cond_6
    const-string v12, "ro.product.customize.bbk"

    const-string v13, "N"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 509
    .local v9, "opEntry":Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_8

    .line 510
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/apps_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".list"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v1, Ljava/io/File;

    .end local v1    # "appsFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .restart local v1    # "appsFile":Ljava/io/File;
    const-string v12, "FactoryAppManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAllApkFiles opEntry appsFile:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 525
    :goto_3
    const-string v12, "FactoryAppManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAllApkFiles etc appsFile:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " opEntry:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 527
    invoke-direct {p0, v1}, Lcom/vivo/settings/applications/FactoryAppManager;->getContainAppList(Ljava/io/File;)V

    goto/16 :goto_1

    .line 517
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/apps.list"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    new-instance v1, Ljava/io/File;

    .end local v1    # "appsFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "appsFile":Ljava/io/File;
    goto :goto_3

    .line 521
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/apps.list"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    new-instance v1, Ljava/io/File;

    .end local v1    # "appsFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "appsFile":Ljava/io/File;
    goto :goto_3

    .line 537
    .end local v9    # "opEntry":Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/io/File;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v11    # "tmpFile":Ljava/io/File;
    :cond_9
    invoke-direct {p0, v11}, Lcom/vivo/settings/applications/FactoryAppManager;->getAllApkFiles(Ljava/io/File;)V

    .line 531
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method

.method private getContainAppList(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 588
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 590
    .local v0, "buff":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 591
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mFileContainSet:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 592
    const-string v3, "FactoryAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContainAppList line:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 595
    .end local v0    # "buff":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "FactoryAppManager"

    const-string v4, "file not found "

    invoke-static {v3, v4, v1}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 601
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    return-void

    .line 597
    :catch_1
    move-exception v1

    .line 598
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "FactoryAppManager"

    const-string v4, "io error "

    invoke-static {v3, v4, v1}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "archiveFilePath"    # Ljava/lang/String;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private indexOfApplicationInfo(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "install"    # Z

    .prologue
    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, "isAddorMv":Z
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 382
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;

    iget-object v3, v3, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFilePath:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 381
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;

    iget-object v3, v3, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/vivo/settings/applications/FactoryAppManager;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 386
    .local v2, "mPkgName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    const-string v3, "FactoryAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index is :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    if-eqz p2, :cond_2

    .line 389
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->isInstalled:Z

    .line 393
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    .line 391
    :cond_2
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->isInstalled:Z

    goto :goto_2

    .line 396
    .end local v2    # "mPkgName":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 397
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileAdapter:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

    invoke-virtual {v3}, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->notifyDataSetChanged()V

    .line 399
    :cond_4
    return-void
.end method

.method private isNeedAdd(Ljava/lang/String;)Z
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 604
    const/4 v1, 0x0

    .line 606
    .local v1, "needAdd":Z
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mFileContainSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mFileContainSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 607
    :cond_0
    const/4 v1, 0x1

    .line 619
    :cond_1
    return v1

    .line 609
    :cond_2
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mFileContainSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 610
    .local v0, "it":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 611
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 614
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadPackageFileInfo(Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;)Z
    .locals 8
    .param p1, "packageFile"    # Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 548
    iget-object v5, p1, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/vivo/settings/applications/FactoryAppManager;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 549
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v5, "FactoryAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadPackageFileInfo mFilePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " packageInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    if-nez v2, :cond_0

    .line 571
    :goto_0
    return v3

    .line 555
    :cond_0
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, p1, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFileVersion:Ljava/lang/String;

    .line 556
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, p1, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mApkInfo:Landroid/content/pm/ApplicationInfo;

    .line 557
    const/4 v0, 0x0

    .line 559
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v5, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 565
    :goto_1
    if-nez v0, :cond_1

    .line 566
    iput-boolean v3, p1, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->isInstalled:Z

    :goto_2
    move v3, v4

    .line 571
    goto :goto_0

    .line 560
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 568
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iput-boolean v4, p1, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->isInstalled:Z

    goto :goto_2
.end method

.method private startSearchApk()V
    .locals 2

    .prologue
    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mApkExist:Z

    .line 274
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->emptyText:Landroid/widget/TextView;

    const v1, 0x7f0b0378

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mApkFileLoaderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mApkFileLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f04005d

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/FactoryAppManager;->setContentView(I)V

    .line 142
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FactoryAppManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPm:Landroid/content/pm/PackageManager;

    .line 143
    const v0, 0x7f0e0111

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/FactoryAppManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->emptyText:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0e00b7

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/FactoryAppManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mEmpTextLayout:Landroid/widget/LinearLayout;

    .line 145
    const v0, 0x7f0e0112

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/FactoryAppManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FactoryAppManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/settings/AsyncImageLoader;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/AsyncImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    .line 147
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    .line 150
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "loadApkFileThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 151
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 152
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mApkFileLoaderHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mApkFileLoaderHandler:Landroid/os/Handler;

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FactoryAppManager;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mListView:Landroid/widget/ListView;

    .line 157
    new-instance v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

    iget-object v1, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileInfoList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;-><init>(Lcom/vivo/settings/applications/FactoryAppManager;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileAdapter:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

    .line 158
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileAdapter:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    iput-boolean v2, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mApkExist:Z

    .line 161
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FactoryAppManager;->showTitleLeftButton()V

    .line 164
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/FactoryAppManager;->setTitleLeftButtonIcon(I)V

    .line 165
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mLeftButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/FactoryAppManager;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageIntentReceiver:Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;

    if-nez v0, :cond_2

    .line 167
    new-instance v0, Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;-><init>(Lcom/vivo/settings/applications/FactoryAppManager;Landroid/content/Context;Lcom/vivo/settings/applications/FactoryAppManager$1;)V

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageIntentReceiver:Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;

    .line 168
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageIntentReceiver:Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;->registerReceiver()V

    .line 171
    :cond_2
    const-string v0, "FactoryAppManager"

    const-string v1, "calling onCreate !!!"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    invoke-virtual {v0}, Lcom/vivo/settings/AsyncImageLoader;->resetCachedDrawable()V

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    .line 212
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageIntentReceiver:Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/FactoryAppManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    invoke-direct {p0}, Lcom/vivo/settings/applications/FactoryAppManager;->exitHandlerThread()V

    .line 214
    const-string v0, "FactoryAppManager"

    const-string v1, "calling onDestroy()"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onDestroy()V

    .line 216
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
    .line 220
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/vivo/settings/applications/FactoryAppManager;->mPackageFileAdapter:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

    invoke-virtual {v6, p3}, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;

    .line 221
    .local v1, "info":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;
    if-nez v1, :cond_0

    .line 222
    const-string v6, "PackageInstallationManager"

    const-string v7, "onItemClick info == null, impossible"

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v6, v1, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "apkFile":Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 229
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 230
    .local v4, "typeMap":Landroid/webkit/MimeTypeMap;
    const-string v6, "apk"

    invoke-virtual {v4, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v2}, Lcom/vivo/settings/applications/FactoryAppManager;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onPause()V

    .line 190
    const-string v0, "FactoryAppManager"

    const-string v1, "calling onPause !!!"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onResume()V

    .line 184
    const-string v0, "FactoryAppManager"

    const-string v1, "calling onResume !!!"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onStart()V

    .line 196
    const-string v0, "FactoryAppManager"

    const-string v1, " calling onStart !!!"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onStop()V

    .line 202
    const-string v0, "FactoryAppManager"

    const-string v1, "calling onStop !!! "

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method
