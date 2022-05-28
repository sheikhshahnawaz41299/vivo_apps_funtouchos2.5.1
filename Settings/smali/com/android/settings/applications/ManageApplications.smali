.class public Lcom/android/settings/applications/ManageApplications;
.super Lcom/vivo/settings/VivoFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/settings/applications/ManageApplications$TabInfo;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field static final DEBUG:Z = true

.field private static final EXTRA_DEFAULT_LIST_TYPE:Ljava/lang/String; = "defaultListType"

.field private static final EXTRA_LIST_TYPE:Ljava/lang/String; = "currentListType"

.field private static final EXTRA_RESET_DIALOG:Ljava/lang/String; = "resetDialog"

.field private static final EXTRA_SHOW_BACKGROUND:Ljava/lang/String; = "showBackground"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final FILTER_APPS_ALL:I = 0x0

.field public static final FILTER_APPS_DISABLED:I = 0x3

.field public static final FILTER_APPS_SDCARD:I = 0x2

.field public static final FILTER_APPS_THIRD_PARTY:I = 0x1

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field static final LIST_TYPE_ALL:I = 0x3

.field static final LIST_TYPE_DISABLED:I = 0x4

.field static final LIST_TYPE_DOWNLOADED:I = 0x0

.field private static final LIST_TYPE_MISSING:I = -0x1

.field static final LIST_TYPE_RUNNING:I = 0x1

.field static final LIST_TYPE_SDCARD:I = 0x2

.field private static final MENU_OPTIONS_BASE:I = 0x0

.field private static final MSG_REFRESH_USAGEINFO:I = 0x0

.field public static final RESET_APP_PREFERENCES:I = 0x8

.field public static final SHOW_BACKGROUND_PROCESSES:I = 0x7

.field public static final SHOW_RUNNING_SERVICES:I = 0x6

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final SORT_ORDER_ALPHA:I = 0x4

.field public static final SORT_ORDER_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "ManageApplications"

.field private static freeSDStorage:J

.field private static isTFSupport:Z

.field private static mDefaultListType:I

.field private static mIsEmulate:Z

.field private static sSdDescription:Ljava/lang/String;

.field private static sdStatus:Ljava/lang/String;

.field private static totalSDStorage:J


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mExtStoragePath:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mNumTabs:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPinnedHeader:Landroid/view/ViewGroup;

.field private mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mSdCardSpaceTask:Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 262
    sput-boolean v0, Lcom/android/settings/applications/ManageApplications;->isTFSupport:Z

    .line 264
    sput-boolean v0, Lcom/android/settings/applications/ManageApplications;->mIsEmulate:Z

    .line 690
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    .line 1361
    sput-wide v2, Lcom/android/settings/applications/ManageApplications;->totalSDStorage:J

    .line 1362
    sput-wide v2, Lcom/android/settings/applications/ManageApplications;->freeSDStorage:J

    .line 1363
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->sdStatus:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    .line 257
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 261
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 661
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1123
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1388
    new-instance v0, Lcom/android/settings/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$2;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mHandler:Landroid/os/Handler;

    .line 1761
    new-instance v0, Lcom/android/settings/applications/ManageApplications$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$4;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplications;)Lcom/android/settings/UserSpinnerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 219
    sget v0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->mIsEmulate:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getSDSpace()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->isTFSupport:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplications;)Lcom/vivo/settings/StorageManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->sdStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 219
    sget-wide v0, Lcom/android/settings/applications/ManageApplications;->totalSDStorage:J

    return-wide v0
.end method

.method static synthetic access$800()J
    .locals 2

    .prologue
    .line 219
    sget-wide v0, Lcom/android/settings/applications/ManageApplications;->freeSDStorage:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    .line 219
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    return v0
.end method

.method private getSDSpace()V
    .locals 4

    .prologue
    .line 1365
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getSDSpace  isTFSupport is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/applications/ManageApplications;->isTFSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->isTFSupport:Z

    if-eqz v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v1}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->sdStatus:Ljava/lang/String;

    .line 1371
    :goto_0
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sdStatus is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->sdStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->sdStatus:Ljava/lang/String;

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->isTFSupport:Z

    if-eqz v0, :cond_2

    .line 1373
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v1}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/StorageManagerWrapper;->getTotalSizeBytes(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/applications/ManageApplications;->totalSDStorage:J

    .line 1374
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v1}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/StorageManagerWrapper;->getAvailSizeBytes(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/applications/ManageApplications;->freeSDStorage:J

    .line 1375
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalStorage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/settings/applications/ManageApplications;->totalSDStorage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeStorage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/settings/applications/ManageApplications;->freeSDStorage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1384
    return-void

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v1}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->sdStatus:Ljava/lang/String;

    goto/16 :goto_0

    .line 1377
    :cond_2
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->sdStatus:Ljava/lang/String;

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->isTFSupport:Z

    if-nez v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v1}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/StorageManagerWrapper;->getTotalSizeBytes(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/applications/ManageApplications;->totalSDStorage:J

    .line 1379
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v1}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/StorageManagerWrapper;->getAvailSizeBytes(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/applications/ManageApplications;->freeSDStorage:J

    .line 1380
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal totalStorage is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/settings/applications/ManageApplications;->totalSDStorage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal freeStorage is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/settings/applications/ManageApplications;->freeSDStorage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getSdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1776
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 1777
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v3

    .line 1778
    .local v1, "len":I
    const-string v2, ""

    .line 1779
    .local v2, "sdDesc":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1780
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1781
    aget-object v4, v3, v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1787
    :cond_0
    return-object v2

    .line 1784
    :cond_1
    const-string v2, "error"

    .line 1779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private registerBroadCastReceiver()V
    .locals 3

    .prologue
    .line 1135
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1138
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1139
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1141
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1512
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1513
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1516
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b034a

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1518
    return-void
.end method

.method private updateNumTabs()V
    .locals 2

    .prologue
    .line 1490
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1491
    .local v0, "newNum":I
    :goto_0
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    if-eq v0, v1, :cond_0

    .line 1492
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    .line 1493
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1497
    :cond_0
    return-void

    .line 1490
    .end local v0    # "newNum":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1606
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1607
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1608
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b036c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1609
    const v1, 0x7f0b036d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1610
    const v1, 0x7f0b036e

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1611
    const v1, 0x7f0b00cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1612
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1613
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1615
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1465
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1468
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1628
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1629
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1631
    .local v4, "mIPm":Landroid/content/pm/IPackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1633
    .local v3, "nm":Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    .line 1634
    .local v6, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1636
    .local v5, "aom":Landroid/app/AppOpsManager;
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1637
    .local v7, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/settings/applications/ManageApplications$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/ManageApplications$3;-><init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1694
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "nm":Landroid/app/INotificationManager;
    .end local v4    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v5    # "aom":Landroid/app/AppOpsManager;
    .end local v6    # "npm":Landroid/net/NetworkPolicyManager;
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1146
    invoke-super/range {p0 .. p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1148
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 1153
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1155
    .local v9, "action":Ljava/lang/String;
    const-string v2, "currentListType"

    const/4 v3, -0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1156
    .local v14, "listType":I
    const-string v2, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v12, 0x0

    .line 1159
    .local v12, "defaultListType":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "classname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1161
    .local v10, "className":Ljava/lang/String;
    :goto_0
    if-nez v10, :cond_0

    .line 1162
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 1164
    :cond_0
    const-class v2, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".RunningServices"

    invoke-virtual {v10, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-ne v14, v2, :cond_8

    .line 1167
    :cond_1
    const/4 v12, 0x1

    .line 1181
    :cond_2
    :goto_1
    const-string v2, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate className:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultListType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    if-eqz p1, :cond_4

    .line 1184
    const-string v2, "sortOrder"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 1185
    const-string v2, "defaultListType"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1186
    .local v16, "tmp":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_3

    move/from16 v12, v16

    .line 1187
    :cond_3
    const-string v2, "showBackground"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1190
    .end local v16    # "tmp":I
    :cond_4
    sput v12, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    .line 1192
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v11

    .line 1194
    .local v11, "containerIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v11, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b038f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b038e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageManager;

    .line 1201
    .local v15, "mStorageManager":Landroid/os/storage/StorageManager;
    if-nez v15, :cond_5

    .line 1202
    const-string v2, "ManageApplications"

    const-string v3, "onCreate Failed to get StorageManager"

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    :cond_5
    invoke-static {v15}, Lcom/vivo/settings/StorageManagerWrapper;->getInstance(Ljava/lang/Object;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 1205
    const-string v2, "persist.sys.app.move.internal"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1206
    const-string v2, "ManageApplications"

    const-string v3, "no need to judge whether surport TF card !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :goto_2
    const-string v2, "1"

    const-string v3, "persist.sys.primary.emulate"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/applications/ManageApplications;->mIsEmulate:Z

    .line 1211
    const-string v2, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate isTFSurport   is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/applications/ManageApplications;->isTFSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsEmulate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/applications/ManageApplications;->mIsEmulate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v1, 0x0

    .line 1214
    .local v1, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    sget v2, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    if-nez v2, :cond_e

    .line 1215
    new-instance v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0373

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1218
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0373

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 1240
    :cond_6
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->registerBroadCastReceiver()V

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    .line 1272
    .local v17, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserSpinnerAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    .line 1273
    return-void

    .line 1159
    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    .end local v10    # "className":Ljava/lang/String;
    .end local v11    # "containerIntent":Landroid/content/Intent;
    .end local v15    # "mStorageManager":Landroid/os/storage/StorageManager;
    .end local v17    # "um":Landroid/os/UserManager;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1168
    .restart local v10    # "className":Ljava/lang/String;
    :cond_8
    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, ".StorageUse"

    invoke-virtual {v10, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x3

    if-ne v14, v2, :cond_a

    .line 1172
    :cond_9
    const/4 v12, 0x3

    goto/16 :goto_1

    .line 1173
    :cond_a
    const-string v2, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1175
    const/4 v12, 0x3

    goto/16 :goto_1

    .line 1176
    :cond_b
    const-string v2, "com.android.settings.applications.AppInSdcard"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x2

    if-ne v14, v2, :cond_2

    .line 1178
    :cond_c
    const/4 v12, 0x2

    goto/16 :goto_1

    .line 1208
    .restart local v11    # "containerIntent":Landroid/content/Intent;
    .restart local v15    # "mStorageManager":Landroid/os/storage/StorageManager;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v2}, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF()Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/applications/ManageApplications;->isTFSupport:Z

    goto/16 :goto_2

    .line 1220
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_e
    sget v2, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 1221
    new-instance v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0374

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1224
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0374

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_3

    .line 1226
    :cond_f
    sget v2, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 1227
    new-instance v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0371

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1230
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0371

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_3

    .line 1232
    :cond_10
    sget v2, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1233
    new-instance v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0375

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1236
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07bb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1522
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1525
    const v0, 0x7f0b0367

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1528
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0b0368

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1531
    const/4 v0, 0x6

    const v1, 0x7f0b0369

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1533
    const/4 v0, 0x7

    const v1, 0x7f0b036a

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1535
    const/16 v0, 0x8

    const v1, 0x7f0b036b

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1537
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1538
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, -0x1

    .line 1279
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 1281
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040074

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1283
    .local v4, "rootView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 1284
    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 1293
    const v6, 0x7f0e001e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 1294
    new-instance v0, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    .line 1295
    .local v0, "adapter":Lcom/android/settings/applications/ManageApplications$MyPagerAdapter;
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1296
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1302
    instance-of v6, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v6, :cond_0

    .line 1303
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 1306
    :cond_0
    if-eqz p3, :cond_1

    const-string v6, "resetDialog"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1307
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->buildResetDialog()V

    .line 1310
    :cond_1
    if-nez p3, :cond_2

    .line 1312
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "currentListType"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1314
    .local v2, "extraCurrentListType":I
    if-eq v2, v9, :cond_3

    move v1, v2

    .line 1316
    .local v1, "currentListType":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mNumTabs:I

    if-ge v3, v6, :cond_2

    .line 1317
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1318
    .local v5, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget v6, v5, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v6, v1, :cond_4

    .line 1319
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1324
    .end local v1    # "currentListType":I
    .end local v2    # "extraCurrentListType":I
    .end local v3    # "i":I
    .end local v5    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showBBKBackButton()V

    .line 1326
    return-object v4

    .line 1314
    .restart local v2    # "extraCurrentListType":I
    :cond_3
    sget v1, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    goto :goto_0

    .line 1316
    .restart local v1    # "currentListType":I
    .restart local v3    # "i":I
    .restart local v5    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1552
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1554
    const/4 v1, -0x1

    sput v1, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    .line 1555
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1556
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsState;->clear()V

    .line 1557
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsState;->exitBackgroundThread()V

    .line 1558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1559
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->destroy()V

    .line 1558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1561
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    .line 1562
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$2000(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    .line 1563
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iput-object v3, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 1564
    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1566
    :cond_1
    invoke-static {}, Lcom/android/settings/applications/ApplicationsState;->removeInstance()V

    .line 1567
    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 1568
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onDestroy()V

    .line 1569
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1548
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1450
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1451
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1456
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1457
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->detachView()V

    .line 1458
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->release()V

    .line 1456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1460
    :cond_1
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onDestroyView()V

    .line 1461
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1622
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "tab"    # Lcom/android/settings/applications/ManageApplications$TabInfo;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1726
    .local p2, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1727
    iget-object v1, p1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1728
    .local v0, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1729
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1731
    .end local v0    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 1472
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v3, p3}, Lcom/android/settings/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1473
    .local v2, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1474
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1475
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1476
    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1477
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1478
    .local v0, "currentTab":I
    const-string v4, "currentListType"

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v3, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1479
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1480
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->finish()V

    .line 1482
    .end local v0    # "currentTab":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1487
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1698
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1699
    .local v0, "menuId":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1700
    :cond_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 1701
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    .line 1702
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1720
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    move v1, v2

    .line 1721
    :cond_2
    return v1

    .line 1704
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 1705
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1706
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$2200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1707
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$2200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1709
    :cond_4
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 1710
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1711
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$2200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1712
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$2200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1714
    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 1715
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1418
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onPause()V

    .line 1419
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 1421
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1422
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1423
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1426
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1427
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 1426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1429
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1543
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1342
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onResume()V

    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 1344
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 1346
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1347
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1405
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1406
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1407
    sget v0, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1408
    const-string v0, "defaultListType"

    sget v1, Lcom/android/settings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1410
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1411
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1412
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1414
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1331
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onStart()V

    .line 1333
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSdCardSpaceTask:Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;

    if-nez v0, :cond_0

    .line 1334
    new-instance v0, Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSdCardSpaceTask:Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;

    .line 1336
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mSdCardSpaceTask:Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1338
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1433
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onStop()V

    .line 1440
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSdCardSpaceTask:Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;->cancel(Z)Z

    .line 1441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSdCardSpaceTask:Lcom/android/settings/applications/ManageApplications$SdCardSpaceTask;

    .line 1443
    return-void
.end method

.method tabForType(I)Lcom/android/settings/applications/ManageApplications$TabInfo;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1501
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1502
    .local v1, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1506
    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1500
    .restart local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1506
    .end local v1    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 1734
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1735
    .local v3, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1738
    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1739
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1740
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1744
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1745
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 1746
    .local v2, "t":Lcom/android/settings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1747
    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    .line 1744
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1742
    .end local v1    # "i":I
    .end local v2    # "t":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1751
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1752
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1753
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1754
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1755
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1757
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1572
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v5, :cond_0

    .line 1603
    :goto_0
    return-void

    .line 1581
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v5, v5, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v5, v3, :cond_3

    .line 1582
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/ManageApplications;->tabForType(I)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v2

    .line 1583
    .local v2, "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$2200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$2200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v5}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v1

    .line 1585
    .local v1, "showingBackground":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1586
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1587
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1588
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v1, :cond_2

    :goto_2
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1589
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1590
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1598
    .end local v1    # "showingBackground":Z
    .end local v2    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get Exception is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_1
    move v1, v4

    .line 1583
    goto :goto_1

    .restart local v1    # "showingBackground":Z
    :cond_2
    move v3, v4

    .line 1588
    goto :goto_2

    .line 1592
    .end local v1    # "showingBackground":Z
    .end local v2    # "tab":Lcom/android/settings/applications/ManageApplications$TabInfo;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v5, v7, :cond_4

    move v5, v3

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1593
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v6, v8, :cond_5

    :goto_4
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1594
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1595
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1596
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    move v5, v4

    .line 1592
    goto :goto_3

    :cond_5
    move v3, v4

    .line 1593
    goto :goto_4
.end method
