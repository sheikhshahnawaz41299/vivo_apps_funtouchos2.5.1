.class public Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;
.super Ljava/lang/Object;
.source "WifiHelper.java"


# static fields
.field private static final SCAN_INTERVAL:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "WifiHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableScan:Z

.field private mFirstScan:Z

.field private mThread:Ljava/lang/Thread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mContext:Landroid/content/Context;

    .line 13
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    .line 15
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mEnableScan:Z

    .line 16
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mFirstScan:Z

    .line 17
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mThread:Ljava/lang/Thread;

    .line 21
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 23
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    .line 25
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mThread:Ljava/lang/Thread;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    .prologue
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mEnableScan:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    .prologue
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mFirstScan:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mFirstScan:Z

    return p1
.end method


# virtual methods
.method public startScanAsync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    const-string v0, "WifiHelper"

    const-string v1, "start Scan"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mEnableScan:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "WifiHelper"

    const-string v1, "wifi scan has started,return"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mFirstScan:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mEnableScan:Z

    .line 68
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 70
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopScanAsync()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "WifiHelper"

    const-string v1, "stop Scan"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->mEnableScan:Z

    .line 76
    return-void
.end method
