.class public Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;
.super Ljava/lang/Object;
.source "SwitcherHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitcherHelper"

.field private static mCurSwitchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSwitcherArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApnSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

.field private mBtSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

.field private mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

.field private mGpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mNfcSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

.field private mOfflineSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrderSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

.field private mPortraitSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

.field private mPowerOffSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;

.field private mRebootSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

.field private mScrollTip:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mShared:Landroid/content/SharedPreferences;

.field private mSmartShotSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

.field private mSpeedUpSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

.field private mSpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

.field private mSwitcherContainer:Landroid/widget/LinearLayout;

.field private mSwitcherIndex:I

.field private mSwitcherUpdateMonitor:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

.field private mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

.field private mVibrateSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

.field private mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

.field private mWifiApSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

.field private mWifiHelper:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

.field private mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

.field private mZenModeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    .line 131
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    .line 88
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 109
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 112
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiHelper:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mShared:Landroid/content/SharedPreferences;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 117
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherUpdateMonitor:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherUpdateMonitor:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->init()V

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->createSwitcher()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->hideScrollTip()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOrderSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    return-object v0
.end method

.method private createSwitcher()V
    .locals 5

    .prologue
    .line 135
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0210

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpeedUpSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpeedUpSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 137
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpeedUpSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpeedUpSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0211

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 143
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0213

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 149
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const-string v1, "com.vivo.smartshot"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0215

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSmartShotSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSmartShotSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 156
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSmartShotSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSmartShotSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->isSupportEyeProtectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0255

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 163
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_1
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isExport()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0214

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 171
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_2
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0212

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mApnSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mApnSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 178
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mApnSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mApnSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0216

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mVibrateSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    .line 183
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mVibrateSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 184
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mVibrateSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mVibrateSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0217

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mPortraitSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mPortraitSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 190
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mPortraitSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mPortraitSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0219

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 197
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e021a

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOfflineSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOfflineSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 204
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOfflineSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOfflineSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0222

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mZenModeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mZenModeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 210
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mZenModeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mZenModeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e021d

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mBtSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mBtSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 216
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mBtSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mBtSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e021e

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mGpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    .line 221
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mGpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 222
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mGpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mGpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e021f

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mNfcSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mNfcSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 229
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mNfcSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mNfcSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_4
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0254

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiApSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiApSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 236
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiApSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiApSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0220

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mRebootSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    .line 241
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mRebootSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 242
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mRebootSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mRebootSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0221

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mPowerOffSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mPowerOffSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 248
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mPowerOffSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mPowerOffSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0223

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOrderSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    .line 253
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOrderSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 254
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherIndex:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOrderSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    return-void
.end method

.method public static getSwitchers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static getSwitchersClassName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    return-object v0
.end method

.method private hideScrollTip()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mScrollTip:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AnimatedImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mScrollTip:Lcom/android/systemui/statusbar/AnimatedImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "upslide_switcher_arrow_animation_invisible"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 444
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 446
    :cond_0
    return-void
.end method

.method private refreshSwitchsDisplay()V
    .locals 3

    .prologue
    .line 498
    sget-object v2, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 508
    :cond_0
    return-void

    .line 501
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 502
    sget-object v2, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;

    .line 503
    .local v1, "switcher":Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
    if-eqz v1, :cond_2

    .line 504
    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->refreshColorTextAndIcon()V

    .line 505
    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->refreshDisplay()V

    .line 501
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addSwitchers(Landroid/widget/LinearLayout;)V
    .locals 10
    .param p1, "container"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v8, 0x0

    .line 258
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherContainer:Landroid/widget/LinearLayout;

    if-eq v7, p1, :cond_0

    .line 259
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherContainer:Landroid/widget/LinearLayout;

    .line 261
    :cond_0
    if-eqz p1, :cond_1

    .line 262
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mGpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-virtual {v7}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->deleteObserver()V

    .line 263
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 266
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    move-result-object v2

    .line 267
    .local v2, "manager":Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;
    sget-object v7, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    invoke-virtual {v2, v7}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->refresh(Ljava/util/List;)V

    .line 269
    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->getShowList()Ljava/util/List;

    move-result-object v6

    .line 270
    .local v6, "switcherNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_3

    move v3, v8

    .line 271
    .local v3, "size":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 272
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 273
    .local v5, "switcherName":Ljava/lang/String;
    sget-object v7, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mCurSwitchers:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 274
    .local v1, "index":I
    sget-object v7, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;

    .line 275
    .local v4, "switcher":Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->getView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->refreshDisplay()V

    .line 278
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->getName()I

    move-result v7

    const v9, 0x7f0e021e

    if-ne v7, v9, :cond_2

    .line 279
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->prepare()V

    .line 271
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v3    # "size":I
    .end local v4    # "switcher":Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
    .end local v5    # "switcherName":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 284
    .restart local v0    # "i":I
    .restart local v3    # "size":I
    :cond_4
    sget-object v7, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    sget-object v9, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherArray:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;

    .line 285
    .restart local v4    # "switcher":Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->getView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->refreshDisplay()V

    .line 288
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/HorizontalScrollView;

    iput-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 289
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v9}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mShared:Landroid/content/SharedPreferences;

    const-string v9, "upslide_switcher_arrow_animation_invisible"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_5

    .line 292
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mScrollTip:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    .line 294
    :cond_5
    return-void
.end method

.method public bluetoothAdapterChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mBtSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->bluetoothAdapterChanged(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

.method public collapseUpSlideView()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->performCollapse()V

    .line 318
    return-void
.end method

.method public dismissUpSlideDialogs()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpeedUpSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpeedUpSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->dismissDialog()V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->dismissDialog()V

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->dismissDialog()V

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mApnSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mApnSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->dismissDialog()V

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    if-eqz v0, :cond_4

    .line 462
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->dismissDialog()V

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    if-eqz v0, :cond_5

    .line 466
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->dismissDialog()V

    .line 468
    :cond_5
    return-void
.end method

.method public finishOrder()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->addSwitchers(Landroid/widget/LinearLayout;)V

    .line 433
    return-void
.end method

.method public isUpSlideDialogsShowing()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "show":Z
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpeedUpSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    if-eqz v3, :cond_1

    .line 473
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpeedUpSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->isDialogShowing()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_0
    move v0, v2

    .line 475
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    if-eqz v3, :cond_3

    .line 476
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isDialogShowing()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_2
    move v0, v2

    .line 478
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    if-eqz v3, :cond_5

    .line 479
    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->isDialogShowing()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_4
    move v0, v2

    .line 481
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mApnSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    if-eqz v3, :cond_7

    .line 482
    if-nez v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mApnSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->isDialogShowing()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_6
    move v0, v2

    .line 484
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    if-eqz v3, :cond_9

    .line 485
    if-nez v0, :cond_8

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->isDialogShowing()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_8
    move v0, v2

    .line 487
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    if-eqz v3, :cond_b

    .line 488
    if-nez v0, :cond_a

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->isDialogShowing()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_a
    move v0, v2

    .line 490
    :cond_b
    :goto_5
    return v0

    :cond_c
    move v0, v1

    .line 473
    goto :goto_0

    :cond_d
    move v0, v1

    .line 476
    goto :goto_1

    :cond_e
    move v0, v1

    .line 479
    goto :goto_2

    :cond_f
    move v0, v1

    .line 482
    goto :goto_3

    :cond_10
    move v0, v1

    .line 485
    goto :goto_4

    :cond_11
    move v0, v1

    .line 488
    goto :goto_5
.end method

.method public nfcAdapterChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mNfcSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->nfcAdapterChanged(Landroid/content/Intent;)V

    .line 330
    return-void
.end method

.method public onAirplaneModeChanged()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiApSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiApSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method public onApnStateChanged()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mApnSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->onApnStateChanged()V

    .line 346
    return-void
.end method

.method public onBatteryChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->onBatteryChanged(Landroid/content/Intent;)V

    .line 338
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->onBootCompleted()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->refreshSwitchsDisplay()V

    .line 495
    return-void
.end method

.method public onFlashlightStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->onFlashlightStateChanged(Landroid/content/Intent;)V

    .line 342
    return-void
.end method

.method public onNightModeAlarmAlert()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->onNightModeAlarmAlert()V

    goto :goto_0
.end method

.method public onNightModeChanged()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->onNightModeChanged()V

    goto :goto_0
.end method

.method public onPanelViewCollapseFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 414
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiHelper:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiHelper:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->stopScanAsync()V

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v2, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 423
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onPanelViewExpandFinish()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiHelper:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiHelper:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->startScanAsync()V

    .line 411
    :cond_0
    return-void
.end method

.method public onScreenTurnOn()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mEyeSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->onScreenTurnOn()V

    goto :goto_0
.end method

.method public onSpeedUpFinished(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpeedUpSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->onSpeedUpFinished(Landroid/content/Intent;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onSpeedUpFinished(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public onSpeedUpStarted(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiHelper:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiHelper:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiHelper;->stopScanAsync()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onSpeedUpStarted()V

    .line 306
    return-void
.end method

.method public onSpeedUpTimeout()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onSpeedUpTimeout()V

    .line 310
    return-void
.end method

.method public onSpsEnded()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onSpsEnded()V

    .line 520
    :cond_0
    return-void
.end method

.method public onSpsStarted()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onSpsStarted()V

    .line 514
    :cond_0
    return-void
.end method

.method public onVisitModeChanged(Z)V
    .locals 2
    .param p1, "isVisitModeOn"    # Z

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOrderSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSwitcherContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onWifiApStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiApSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWifiApSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->onWifiApStateChanged(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public refreshDisplayOffline()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOfflineSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->refreshDisplay()V

    .line 405
    return-void
.end method

.method public setArrowAnimationView(Lcom/android/systemui/statusbar/AnimatedImageView;)V
    .locals 0
    .param p1, "animatedImageView"    # Lcom/android/systemui/statusbar/AnimatedImageView;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mScrollTip:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 437
    return-void
.end method

.method public superPowerSaveChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mSpsSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->superPowerSaveChanged(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

.method public switchOfflineMode(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mOfflineSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->switchOfflineMode(Landroid/content/Intent;)V

    .line 322
    return-void
.end method

.method public vibrateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mVibrateSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->vibrateChanged(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method public wechatPackageAdded(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->mWechatScanSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->wechatPackageAdded(Landroid/content/Intent;)V

    .line 429
    :cond_0
    return-void
.end method
