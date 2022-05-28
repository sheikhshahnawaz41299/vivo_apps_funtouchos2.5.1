.class public Lcom/android/settings/dashboard/DashboardTileStatusManager;
.super Ljava/lang/Object;
.source "DashboardTileStatusManager.java"


# static fields
.field public static final ACTION_CHANGE_APPLICATION_NOTIFICATION_NUM:Ljava/lang/String; = "launcher.action.CHANGE_APPLICATION_NOTIFICATION_NUM"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final ID_AIR:I = 0x7f0e02d6

.field private static final ID_GLOVE:I = 0x7f0e02ee

.field private static final ID_NET:I = 0x7f0e02da

.field private static final ID_PHONE:I = 0x7f0e02e2

.field private static final ID_ROAM:I = 0x7f0e02d9

.field private static final ID_UPDATE:I = 0x7f0e02e1

.field private static final ID_WFD:I = 0x7f0e02ec

.field private static final ID_WIFI:I = 0x7f0e02d7

.field private static final MSG_FLUSH_ALL:I = 0x0

.field private static final MSG_UPDATE_AIRPLANE_MODE_RESTORE_STATE:I = 0x1

.field private static final MSIM_MODE_SETTING:Ljava/lang/String; = "msim_mode_setting"

.field private static final NEED_PUT_AND_FLUSH_IDS:[I

.field private static final TAG:Ljava/lang/String; = "DashboardTileStatusManager"

.field private static mWifiP2PEnabled:Z


# instance fields
.field private mAirplaneEnabled:Z

.field private mAirplaneModeOn:Z

.field private mBBKTouchScreenService:Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

.field private mCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFlushFlags:Landroid/util/SparseBooleanArray;

.field private mGloveModeEnabled:Z

.field private mGloveModeOn:Z

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSimActiveCount:I

.field private mSimCount:I

.field private mSimUtils:Lcom/vivo/settings/SimUtils;

.field private mTileViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/dashboard/DashboardTileView;",
            ">;"
        }
    .end annotation
.end field

.field private mTiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/dashboard/DashboardTile;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdaterNotification:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->NEED_PUT_AND_FLUSH_IDS:[I

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mWifiP2PEnabled:Z

    return-void

    .line 66
    nop

    :array_0
    .array-data 4
        0x7f0e02d7
        0x7f0e02ec
        0x7f0e02d9
        0x7f0e02da
        0x7f0e02e2
        0x7f0e02d6
        0x7f0e02ee
        0x7f0e02e1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTileViews:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTiles:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mCategories:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mCategoryViews:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFlushFlags:Landroid/util/SparseBooleanArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mListeners:Landroid/util/SparseArray;

    .line 94
    iput v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimCount:I

    .line 95
    iput v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimActiveCount:I

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneModeOn:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneEnabled:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeOn:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeEnabled:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mUpdaterNotification:Z

    .line 101
    new-instance v0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;-><init>(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Lcom/android/settings/dashboard/DashboardTileStatusManager$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager$2;-><init>(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mHandler:Landroid/os/Handler;

    .line 166
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContext:Landroid/content/Context;

    .line 167
    new-instance v0, Lcom/vivo/settings/SimUtils;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 169
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 170
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->handleWifiSate(I)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardTileStatusManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->handleWifiSate(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateWifiInfo()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateUpdaterState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->flushAll()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/dashboard/DashboardTileStatusManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneEnabled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/dashboard/DashboardTileStatusManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeOn:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/dashboard/DashboardTileStatusManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeOn:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Lcom/vivo/services/touchscreen/IBBKTouchScreenService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mBBKTouchScreenService:Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/dashboard/DashboardTileStatusManager;Lcom/vivo/services/touchscreen/IBBKTouchScreenService;)Lcom/vivo/services/touchscreen/IBBKTouchScreenService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;
    .param p1, "x1"    # Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mBBKTouchScreenService:Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    return-object p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 49
    sput-boolean p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mWifiP2PEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateWfdState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateAirplaneModeState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/dashboard/DashboardTileStatusManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/dashboard/DashboardTileStatusManager;I)Lcom/android/settings/dashboard/DashboardCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getCategory(I)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/dashboard/DashboardTileStatusManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateGloveModeState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateSimCountState()V

    return-void
.end method

.method private copyCategorySummary(Lcom/android/settings/dashboard/DashboardCategory;Lcom/android/settings/dashboard/DashboardCategory;)V
    .locals 1
    .param p1, "oldCategory"    # Lcom/android/settings/dashboard/DashboardCategory;
    .param p2, "newCategory"    # Lcom/android/settings/dashboard/DashboardCategory;

    .prologue
    .line 296
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardCategory;->summary:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/android/settings/dashboard/DashboardCategory;->summary:Ljava/lang/CharSequence;

    .line 297
    iget v0, p1, Lcom/android/settings/dashboard/DashboardCategory;->summaryRes:I

    iput v0, p2, Lcom/android/settings/dashboard/DashboardCategory;->summaryRes:I

    .line 298
    return-void
.end method

.method private copyTileStatus(Lcom/android/settings/dashboard/DashboardTile;Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 1
    .param p1, "oldTile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p2, "newTile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 270
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    .line 271
    iget v0, p1, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    iput v0, p2, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 272
    iget-boolean v0, p1, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    iput-boolean v0, p2, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 273
    iget-boolean v0, p1, Lcom/android/settings/dashboard/DashboardTile;->checked:Z

    iput-boolean v0, p2, Lcom/android/settings/dashboard/DashboardTile;->checked:Z

    .line 274
    return-void
.end method

.method private declared-synchronized flushAll()V
    .locals 12

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 538
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTileViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTileViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 540
    .local v10, "id":I
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFlushFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFlushFlags:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardTile;

    .line 543
    .local v2, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTileViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/DashboardTileView;

    .line 544
    .local v3, "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Lcom/android/settings/dashboard/DashboardTileView;II)V

    .line 538
    .end local v2    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v3    # "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 559
    .end local v10    # "id":I
    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mCategoryViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 560
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mCategoryViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 561
    .restart local v10    # "id":I
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFlushFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFlushFlags:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 563
    invoke-direct {p0, v10}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getCategory(I)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v6

    .line 564
    .local v6, "category":Lcom/android/settings/dashboard/DashboardCategory;
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mCategoryViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 565
    .local v8, "categoryView":Landroid/view/View;
    const v0, 0x1020010

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 566
    .local v7, "categorySummary":Landroid/widget/TextView;
    invoke-virtual {v6, v1}, Lcom/android/settings/dashboard/DashboardCategory;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 567
    .local v11, "summary":Ljava/lang/CharSequence;
    const-string v0, "DashboardTileStatusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " summay is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 569
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    .end local v6    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v7    # "categorySummary":Landroid/widget/TextView;
    .end local v8    # "categoryView":Landroid/view/View;
    .end local v11    # "summary":Ljava/lang/CharSequence;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 572
    .restart local v6    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v7    # "categorySummary":Landroid/widget/TextView;
    .restart local v8    # "categoryView":Landroid/view/View;
    .restart local v11    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 535
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v6    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v7    # "categorySummary":Landroid/widget/TextView;
    .end local v8    # "categoryView":Landroid/view/View;
    .end local v9    # "i":I
    .end local v10    # "id":I
    .end local v11    # "summary":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 576
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v9    # "i":I
    :cond_4
    monitor-exit p0

    return-void
.end method

.method private getCategory(I)Lcom/android/settings/dashboard/DashboardCategory;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 278
    .local v0, "category":Lcom/android/settings/dashboard/DashboardCategory;
    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/android/settings/dashboard/DashboardCategory;

    .end local v0    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    .line 281
    .restart local v0    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    :cond_0
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFilter:Landroid/content/IntentFilter;

    .line 206
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportWFD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "launcher.action.CHANGE_APPLICATION_NOTIFICATION_NUM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportGloveMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method private getListener(I)Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    .line 460
    .local v0, "listener":Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
    if-nez v0, :cond_1

    .line 461
    sparse-switch p1, :sswitch_data_0

    .line 515
    :goto_0
    if-nez v0, :cond_0

    .line 516
    new-instance v0, Lcom/android/settings/dashboard/DashboardTileStatusManager$5;

    .end local v0    # "listener":Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager$5;-><init>(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    .line 523
    .restart local v0    # "listener":Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 525
    :cond_1
    return-object v0

    .line 463
    :sswitch_0
    new-instance v0, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;

    .end local v0    # "listener":Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager$3;-><init>(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    .line 480
    .restart local v0    # "listener":Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
    goto :goto_0

    .line 482
    :sswitch_1
    new-instance v0, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;

    .end local v0    # "listener":Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager$4;-><init>(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    .restart local v0    # "listener":Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
    goto :goto_0

    .line 461
    :sswitch_data_0
    .sparse-switch
        0x7f0e02d6 -> :sswitch_0
        0x7f0e02ee -> :sswitch_1
    .end sparse-switch
.end method

.method private getTile(I)Lcom/android/settings/dashboard/DashboardTile;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    .line 251
    .local v0, "tile":Lcom/android/settings/dashboard/DashboardTile;
    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/settings/dashboard/DashboardTile;

    .end local v0    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardTile;-><init>()V

    .line 253
    .restart local v0    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    :cond_0
    return-object v0
.end method

.method private handleWifiSate(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const v5, 0x7f0b0950

    const/4 v4, 0x0

    const v3, 0x7f0e02d7

    .line 305
    const-string v0, "DashboardTileStatusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi state change handle state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    packed-switch p1, :pswitch_data_0

    .line 325
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    iput v5, v0, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 327
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 328
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->sendFlushAll()V

    .line 329
    return-void

    .line 308
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    const v1, 0x7f0b0954

    iput v1, v0, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    goto :goto_0

    .line 311
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    const v1, 0x7f0b0953

    iput v1, v0, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    goto :goto_0

    .line 314
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    const v1, 0x7f0b0951

    iput v1, v0, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    goto :goto_0

    .line 317
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    iput v5, v0, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 318
    invoke-static {}, Lcom/android/settings/AppFeature;->isQCOM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_wfd_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setWfdSummary(Z)V

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isGloveModeOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 616
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glove_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isWfdOn(Z)Z
    .locals 7
    .param p1, "wifiP2PEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 360
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 361
    .local v1, "isWfdOn":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    .line 362
    .local v2, "mWifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    .line 363
    .local v0, "featureState":I
    if-eqz v1, :cond_2

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->isWifiOn()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    return v3

    .end local v0    # "featureState":I
    .end local v1    # "isWfdOn":Z
    .end local v2    # "mWifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_1
    move v1, v4

    .line 360
    goto :goto_0

    .restart local v0    # "featureState":I
    .restart local v1    # "isWfdOn":Z
    .restart local v2    # "mWifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_2
    move v3, v4

    .line 363
    goto :goto_1
.end method

.method private isWifiOn()Z
    .locals 2

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 368
    .local v0, "state":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putCategory(ILcom/android/settings/dashboard/DashboardCategory;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "category"    # Lcom/android/settings/dashboard/DashboardCategory;

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 293
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 289
    .local v0, "oldTile":Lcom/android/settings/dashboard/DashboardCategory;
    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0, v0, p2}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->copyCategorySummary(Lcom/android/settings/dashboard/DashboardCategory;Lcom/android/settings/dashboard/DashboardCategory;)V

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mCategories:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private putTile(ILcom/android/settings/dashboard/DashboardTile;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 259
    if-nez p2, :cond_0

    .line 267
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    .line 263
    .local v0, "oldTile":Lcom/android/settings/dashboard/DashboardTile;
    if-eqz v0, :cond_1

    .line 264
    invoke-direct {p0, v0, p2}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->copyTileStatus(Lcom/android/settings/dashboard/DashboardTile;Lcom/android/settings/dashboard/DashboardTile;)V

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerRadioState()V
    .locals 9

    .prologue
    .line 579
    invoke-static {}, Lcom/android/settings/AppFeature;->isMTK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_2

    .line 583
    new-instance v0, Lcom/android/settings/dashboard/DashboardTileStatusManager$6;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager$6;-><init>(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSettingsObserver:Ljava/util/Observer;

    .line 591
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "msim_mode_setting"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 593
    .local v7, "settingsCursor":Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v7    # "settingsCursor":Landroid/database/Cursor;
    :goto_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 594
    :catch_0
    move-exception v6

    .line 595
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DashboardTileStatusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRadioState exp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendFlushAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 532
    :cond_0
    return-void
.end method

.method public static setAirplaneMode(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isAirplaneModeOn"    # Z

    .prologue
    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 630
    return-void

    .line 626
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setFlush(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mFlushFlags:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 302
    return-void
.end method

.method private setWfdSummary(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const v2, 0x7f0e02ec

    .line 372
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0b0953

    :goto_0
    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 374
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 375
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->sendFlushAll()V

    .line 376
    return-void

    .line 372
    :cond_0
    const v0, 0x7f0b0950

    goto :goto_0
.end method

.method private unregisterRadioState()V
    .locals 2

    .prologue
    .line 603
    invoke-static {}, Lcom/android/settings/AppFeature;->isMTK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    goto :goto_0
.end method

.method private updateAirplaneModeState()V
    .locals 3

    .prologue
    const v2, 0x7f0e02d6

    .line 386
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AppFeature;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneModeOn:Z

    .line 387
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneEnabled:Z

    iput-boolean v1, v0, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 388
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneModeOn:Z

    iput-boolean v1, v0, Lcom/android/settings/dashboard/DashboardTile;->checked:Z

    .line 389
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateSimCountState()V

    .line 391
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 392
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->sendFlushAll()V

    .line 393
    return-void
.end method

.method private updateGloveModeState()V
    .locals 4

    .prologue
    const v3, 0x7f0e02ee

    const/4 v1, 0x0

    .line 438
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportGloveMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeEnabled:Z

    .line 448
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->isGloveModeOn(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeOn:Z

    .line 443
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    .line 444
    .local v0, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-boolean v2, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeEnabled:Z

    iput-boolean v2, v0, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 445
    iget-boolean v2, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mGloveModeEnabled:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v0, Lcom/android/settings/dashboard/DashboardTile;->checked:Z

    .line 446
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 447
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->sendFlushAll()V

    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f0e02da

    const v6, 0x7f0e02d9

    const/4 v5, 0x0

    const v4, 0x7f0e02e2

    .line 404
    const-string v1, "DashboardTileStatusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneState mAirplaneModeOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSimCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneModeOn:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimCount:I

    if-nez v1, :cond_1

    .line 406
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iput-boolean v5, v1, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 407
    invoke-direct {p0, v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iput-boolean v5, v1, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 408
    invoke-direct {p0, v6}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iput-boolean v5, v1, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 414
    :goto_0
    const/4 v0, 0x0

    .line 415
    .local v0, "summaryRes":I
    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneModeOn:Z

    if-eqz v1, :cond_2

    .line 416
    const-string v1, "DashboardTileStatusManager"

    const-string v2, "set disabled in airplane mode"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const v0, 0x7f0b00d2

    .line 428
    :goto_1
    invoke-direct {p0, v7}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 429
    invoke-direct {p0, v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 430
    invoke-direct {p0, v6}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iput v0, v1, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 431
    invoke-direct {p0, v7}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 432
    invoke-direct {p0, v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 433
    invoke-direct {p0, v6}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 434
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->sendFlushAll()V

    .line 435
    return-void

    .line 410
    .end local v0    # "summaryRes":I
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iput-boolean v8, v1, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 411
    invoke-direct {p0, v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iput-boolean v8, v1, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 412
    invoke-direct {p0, v6}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iput-boolean v8, v1, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    goto :goto_0

    .line 418
    .restart local v0    # "summaryRes":I
    :cond_2
    iget v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimCount:I

    if-nez v1, :cond_3

    .line 419
    const-string v1, "DashboardTileStatusManager"

    const-string v2, "set disabled with no sim card"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const v0, 0x7f0b0887

    goto :goto_1

    .line 421
    :cond_3
    iget v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimActiveCount:I

    if-nez v1, :cond_4

    .line 422
    invoke-direct {p0, v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v1

    iput-boolean v5, v1, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 423
    const-string v1, "DashboardTileStatusManager"

    const-string v2, "set disabled with no active sim card"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const v0, 0x7f0b08e4

    goto :goto_1

    .line 426
    :cond_4
    const-string v1, "DashboardTileStatusManager"

    const-string v2, "set enabled "

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateSimCountState()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v0}, Lcom/vivo/settings/SimUtils;->forceFlush()V

    .line 380
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v0}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimCount:I

    .line 381
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v0}, Lcom/vivo/settings/SimUtils;->getAllActiveSimCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mSimActiveCount:I

    .line 382
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updatePhoneState()V

    .line 383
    return-void
.end method

.method private updateUpdaterState()V
    .locals 6

    .prologue
    const v5, 0x7f0e02e1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 451
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bbk_update_notice"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 452
    .local v0, "noti":I
    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mUpdaterNotification:Z

    .line 453
    invoke-direct {p0, v5}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mUpdaterNotification:Z

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_1
    iput-object v1, v2, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    .line 454
    invoke-direct {p0, v5}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 455
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->sendFlushAll()V

    .line 456
    return-void

    :cond_0
    move v1, v2

    .line 452
    goto :goto_0

    .line 453
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateWfdState()V
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportWFD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    sget-boolean v0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mWifiP2PEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->isWfdOn(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setWfdSummary(Z)V

    goto :goto_0
.end method

.method private updateWifiInfo()V
    .locals 6

    .prologue
    const v5, 0x7f0e02d7

    .line 332
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 333
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "wifiSummary":Ljava/lang/String;
    const-string v2, "DashboardTileStatusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiInfo.getSSID() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v2, "<unknown ssid>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-direct {p0, v5}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v2

    const v3, 0x7f0b0953

    iput v3, v2, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 340
    const-string v2, "DashboardTileStatusManager"

    const-string v3, "wifiInfo.getSSID() is unknow, set wifiSummary opened"

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-direct {p0, v5}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 346
    invoke-direct {p0, v5}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v2

    iput-object v1, v2, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    .line 348
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 349
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->sendFlushAll()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityDestroy()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    return-void
.end method

.method public onActivityPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 233
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->unregisterRadioState()V

    .line 234
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 3

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateWfdState()V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateSimCountState()V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateAirplaneModeState()V

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateAirplaneModeState(Z)V

    .line 226
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateGloveModeState()V

    .line 227
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateUpdaterState()V

    .line 228
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->registerRadioState()V

    .line 230
    return-void
.end method

.method public registerCategroy(Lcom/android/settings/dashboard/DashboardCategory;Landroid/view/View;)V
    .locals 5
    .param p1, "category"    # Lcom/android/settings/dashboard/DashboardCategory;
    .param p2, "categoryView"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0e02ea

    .line 174
    iget-wide v0, p1, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    const-wide/32 v2, 0x7f0e02ea

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0, v4, p1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->putCategory(ILcom/android/settings/dashboard/DashboardCategory;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mCategoryViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    invoke-direct {p0, v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->sendFlushAll()V

    .line 180
    :cond_0
    return-void
.end method

.method public registerTile(Lcom/android/settings/dashboard/DashboardTile;Lcom/android/settings/dashboard/DashboardTileView;)V
    .locals 4
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p2, "tileView"    # Lcom/android/settings/dashboard/DashboardTileView;

    .prologue
    .line 183
    iget-wide v2, p1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v0, v2

    .line 184
    .local v0, "id":I
    sget-object v2, Lcom/android/settings/dashboard/DashboardTileStatusManager;->NEED_PUT_AND_FLUSH_IDS:[I

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iget v2, p1, Lcom/android/settings/dashboard/DashboardTile;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTileViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardTileView;

    .line 187
    .local v1, "oldTileView":Lcom/android/settings/dashboard/DashboardTileView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardTileView;->getCheckBoxView()Landroid/widget/BbkMoveBoolButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardTileView;->getCheckBoxView()Landroid/widget/BbkMoveBoolButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/BbkMoveBoolButton;->setOnBBKCheckedChangeListener(Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;)V

    .line 191
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settings/dashboard/DashboardTileView;->getCheckBoxView()Landroid/widget/BbkMoveBoolButton;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {p2}, Lcom/android/settings/dashboard/DashboardTileView;->getCheckBoxView()Landroid/widget/BbkMoveBoolButton;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->getListener(I)Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/BbkMoveBoolButton;->setOnBBKCheckedChangeListener(Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;)V

    .line 195
    .end local v1    # "oldTileView":Lcom/android/settings/dashboard/DashboardTileView;
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->putTile(ILcom/android/settings/dashboard/DashboardTile;)V

    .line 196
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mTileViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->setFlush(I)V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->sendFlushAll()V

    .line 200
    :cond_2
    return-void
.end method

.method public updateAirplaneModeState(Z)V
    .locals 2
    .param p1, "restore"    # Z

    .prologue
    .line 396
    const-string v0, "DashboardTileStatusManager"

    const-string v1, "updateAirplaneModeState"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-eqz p1, :cond_0

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager;->mAirplaneEnabled:Z

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->updateAirplaneModeState()V

    .line 401
    return-void
.end method
