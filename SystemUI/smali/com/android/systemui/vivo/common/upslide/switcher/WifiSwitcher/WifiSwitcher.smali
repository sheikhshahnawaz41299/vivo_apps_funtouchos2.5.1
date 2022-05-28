.class public Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "WifiSwitcher.java"


# static fields
.field public static final ACTION_NETWORK_CONNECTION_FAILURE:Ljava/lang/String; = "android.net.wifi.supplicant.NETWORK_CONNECTION_FAILURE"

.field private static final TAG:Ljava/lang/String; = "WifiSwitcher"

.field private static isRefreshText:Z


# instance fields
.field private VALID_TIME:J

.field private mIsUserTurnOn:Z

.field private mLastClickTimeMillis:J

.field private mLastTurnOnTimeMillis:J

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mScanResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultTimeMillis:J

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mWfdDialog:Landroid/app/AlertDialog;

.field private mWifiConnected:Z

.field private mWifiDialog:Landroid/app/AlertDialog;

.field private mWifiLongClicked:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isRefreshText:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 41
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mScanResultList:Ljava/util/List;

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiLongClicked:Z

    .line 43
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiConnected:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIsUserTurnOn:Z

    .line 49
    iput-wide v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mScanResultTimeMillis:J

    .line 50
    iput-wide v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mLastTurnOnTimeMillis:J

    .line 51
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->VALID_TIME:J

    .line 52
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 53
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 55
    iput-wide v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mLastClickTimeMillis:J

    .line 62
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->enableClickAgain()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiLongClicked:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIsUserTurnOn:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiLongClicked:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mLastTurnOnTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->showWifiDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mScanResultTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->VALID_TIME:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mScanResultList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mScanResultList:Ljava/util/List;

    return-object p1
.end method

.method private dismissWifiDialog()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWfdDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWfdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWfdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 318
    :cond_1
    return-void
.end method

.method private enableClickAgain()Z
    .locals 7

    .prologue
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 110
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mLastClickTimeMillis:J

    sub-long v0, v2, v4

    .line 111
    .local v0, "diff":J
    const-string v4, "WifiSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "now = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " diff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-wide/16 v4, 0x190

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 113
    const/4 v4, 0x0

    .line 116
    :goto_0
    return v4

    .line 115
    :cond_0
    iput-wide v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mLastClickTimeMillis:J

    .line 116
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private showWifiDialog()V
    .locals 4

    .prologue
    .line 321
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0238

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0229

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e022a

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$3;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e022b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 343
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiDialog:Landroid/app/AlertDialog;

    .line 344
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 345
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 346
    return-void
.end method

.method private updateWifiSwitcher()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 252
    const/4 v3, 0x0

    .line 253
    .local v3, "ssid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 254
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    if-eqz v5, :cond_3

    .line 255
    const-string v5, "WifiSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update wifi-button, TriState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->getTriState(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->getTriState(Landroid/content/Context;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 290
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v10, v10, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 292
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v0, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    const-string v5, "unknown ssid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 301
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_2
    return-void

    .line 259
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextColorDark:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextColorLight:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiConnected:Z

    if-eqz v5, :cond_0

    .line 266
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 267
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_0

    .line 268
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 269
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 272
    .local v2, "l":I
    const/4 v5, 0x2

    if-le v2, v5, :cond_0

    .line 273
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 280
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "l":I
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->isTurningOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 282
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextColorLight:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 285
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextColorLight:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 296
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v10, v10, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 297
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v0, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 303
    :cond_4
    sget-boolean v5, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isRefreshText:Z

    if-eqz v5, :cond_5

    .line 304
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mName:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 306
    :cond_5
    sput-boolean v11, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isRefreshText:Z

    goto :goto_2

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public collapseUpSlideView()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->collapseUpSlideView()V

    .line 91
    return-void
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWfdDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWfdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 422
    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getScanResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mScanResultList:Ljava/util/List;

    return-object v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f02060f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f02060e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f02060d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 81
    return-void
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public getWifiStateTracker()Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiStateTracker:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    return-object v0
.end method

.method public getWifiTurnOnTimeMillis()J
    .locals 2

    .prologue
    .line 366
    iget-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mLastTurnOnTimeMillis:J

    return-wide v0
.end method

.method public isDialogShowing()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "show":Z
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 427
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    move v0, v2

    .line 429
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWfdDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    .line 430
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWfdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    move v0, v2

    .line 432
    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    .line 427
    goto :goto_0

    :cond_5
    move v0, v1

    .line 430
    goto :goto_1
.end method

.method public isUserTurnOn()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIsUserTurnOn:Z

    return v0
.end method

.method public isWifiConnected()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiConnected:Z

    return v0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getSwitcherIcon()V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.net.wifi.supplicant.NETWORK_CONNECTION_FAILURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->updateWifiSwitcher()V

    .line 68
    return-void
.end method

.method public refreshDisplay(Z)V
    .locals 0
    .param p1, "refresh"    # Z

    .prologue
    .line 71
    sput-boolean p1, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isRefreshText:Z

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->updateWifiSwitcher()V

    .line 73
    return-void
.end method

.method public setNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 413
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 217
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 249
    return-void
.end method

.method public setScanResultList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mScanResultList:Ljava/util/List;

    .line 375
    return-void
.end method

.method public setScanResultTimeMillis(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 386
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mScanResultTimeMillis:J

    .line 387
    return-void
.end method

.method public setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 405
    return-void
.end method

.method public setUserTurnOn(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 394
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mIsUserTurnOn:Z

    .line 395
    return-void
.end method

.method public setWifiConnected(Z)V
    .locals 0
    .param p1, "wifiConnected"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mWifiConnected:Z

    .line 355
    return-void
.end method

.method public setWifiTurnOnTimeMillis(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 362
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->mLastTurnOnTimeMillis:J

    .line 363
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
