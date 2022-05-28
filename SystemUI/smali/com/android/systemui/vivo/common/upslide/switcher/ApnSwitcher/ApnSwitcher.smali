.class public Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "ApnSwitcher.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_SET_DEFAULT_DATA_SUBSCRIPTION_DONE:I = 0x3e8

.field private static final MSG_SHOW_DATA_NETWORK_SELECT:I = 0x3ea

.field private static final MSG_UPDATE_APN_BUTTON_DELAY:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "ApnSwitcher"


# instance fields
.field private mApnObserver:Landroid/database/ContentObserver;

.field private mApnSecurityDialog:Landroid/app/AlertDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFtTelephony:Landroid/telephony/FtTelephony;

.field private mHandler:Landroid/os/Handler;

.field private mLongClickApn:Z

.field private mNetWorkModeDialog:Landroid/app/AlertDialog;

.field private mPhoneCount:I

.field private mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

.field private mSIMSelectDialog:Landroid/app/AlertDialog;

.field private mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

.field private mSharePrefs:Landroid/content/SharedPreferences;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mLongClickApn:Z

    .line 525
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$10;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mHandler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mFtTelephony:Landroid/telephony/FtTelephony;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSharePrefs:Landroid/content/SharedPreferences;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mPhoneCount:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mLongClickApn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mLongClickApn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDirectly(IZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnSecurityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnSecurityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;
    .param p1, "x1"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/telephony/FtTelephony;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mFtTelephony:Landroid/telephony/FtTelephony;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDirectly(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApn()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createDialog(Landroid/view/View;I)Landroid/app/AlertDialog;
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 511
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x30f0004

    invoke-direct {v7, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 512
    .local v7, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 517
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 518
    .local v6, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 519
    return-object v6
.end method

.method private isDuringPhoneCall()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityDialog(IZ)V
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "isAT"    # Z

    .prologue
    const/16 v11, 0x14

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 344
    move v3, p1

    .line 346
    .local v3, "mPhoneId":I
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 347
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSharePrefs:Landroid/content/SharedPreferences;

    const-string v7, "first_data_enable"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isExport()Z

    move-result v6

    if-nez v6, :cond_1

    .line 348
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnSecurityDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_0

    .line 349
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 350
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 351
    const/16 v6, 0xf

    const/16 v7, 0xa

    invoke-virtual {v1, v11, v6, v11, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 353
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 355
    .local v2, "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 356
    .local v4, "tvMsg":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f015d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 357
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    const v7, 0x1010036

    invoke-static {v6, v7}, Lvivo/util/VivoThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    const v6, 0x7f0e0233

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 360
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 361
    .local v5, "tvTip":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    const v7, 0x1030046

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 362
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    const v7, 0x1010038

    invoke-static {v6, v7}, Lvivo/util/VivoThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    const v6, 0x7f0e0234

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 365
    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    const v7, 0x30f0004

    invoke-direct {v0, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 369
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0e0232

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 371
    const v6, 0x7f0e0235

    new-instance v7, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$5;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$5;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;I)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    const v6, 0x7f0e01e5

    new-instance v7, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$6;

    invoke-direct {v7, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$6;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    new-instance v6, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$7;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnSecurityDialog:Landroid/app/AlertDialog;

    .line 402
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnSecurityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 403
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnSecurityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->collapseUpSlideView()V

    .line 412
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v2    # "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "tvMsg":Landroid/widget/TextView;
    .end local v5    # "tvTip":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-direct {p0, v3, v8}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDirectly(IZ)V

    goto :goto_0

    .line 410
    :cond_2
    invoke-direct {p0, v3, v8}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDirectly(IZ)V

    goto :goto_0
.end method

.method private toggleApn()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 245
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 246
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v6, v7}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v1

    .line 247
    .local v1, "isSlot1Insert":Z
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v6, v8}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v3

    .line 248
    .local v3, "isSlot2Insert":Z
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v6, v7}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v2

    .line 249
    .local v2, "isSlot1RadioOn":Z
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v6, v8}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v4

    .line 250
    .local v4, "isSlot2RadioOn":Z
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->isApnOn()Z

    move-result v5

    .line 252
    .local v5, "on":Z
    const-string v6, "ApnSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toggle apn, isSlot1Insert = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSlot2Insert = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSlot1RadioOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSlot2RadioOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", is apn on ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", DefaultDataPhoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getDefaultDataPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 292
    .end local v1    # "isSlot1Insert":Z
    .end local v2    # "isSlot1RadioOn":Z
    .end local v3    # "isSlot2Insert":Z
    .end local v4    # "isSlot2RadioOn":Z
    .end local v5    # "on":Z
    :goto_0
    return-void

    .line 260
    .restart local v1    # "isSlot1Insert":Z
    .restart local v2    # "isSlot1RadioOn":Z
    .restart local v3    # "isSlot2Insert":Z
    .restart local v4    # "isSlot2RadioOn":Z
    .restart local v5    # "on":Z
    :cond_0
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 261
    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    .line 262
    if-eqz v5, :cond_1

    .line 263
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getDefaultDataPhoneId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDirectly(I)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 267
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bbk_default_network_sim_id"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 269
    .local v0, "defaultApnPhoneId":I
    const-string v6, "ApnSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMCC, defaultApnPhoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-ne v9, v0, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDialogWithDefault()V

    goto :goto_0

    .line 273
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDirectly(I)V

    goto :goto_0

    .line 276
    .end local v0    # "defaultApnPhoneId":I
    :cond_3
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isExport()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->isDuringPhoneCall()Z

    move-result v6

    if-nez v6, :cond_4

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDialog()V

    goto :goto_0

    .line 279
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getDefaultDataPhoneId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDirectly(I)V

    goto :goto_0

    .line 284
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getDefaultDataPhoneId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDirectly(I)V

    goto :goto_0

    .line 287
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getDefaultDataPhoneId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDirectly(I)V

    goto :goto_0

    .line 290
    .end local v1    # "isSlot1Insert":Z
    .end local v2    # "isSlot1RadioOn":Z
    .end local v3    # "isSlot2Insert":Z
    .end local v4    # "isSlot2RadioOn":Z
    .end local v5    # "on":Z
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDirectly(I)V

    goto :goto_0
.end method

.method private toggleApnDialog()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "ApnSwitcher"

    const-string v1, "alreay show a sim dialog, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    const-string v0, "ApnSwitcher"

    const-string v1, "alreay show a NetWork Mode dialog, dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 589
    :cond_1
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    .line 590
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$11;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->notifyDataChanged()V

    .line 623
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    const v1, 0x7f0e0231

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->createDialog(Landroid/view/View;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    .line 624
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$12;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 637
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 638
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->collapseUpSlideView()V

    goto :goto_0
.end method

.method private toggleApnDialogWithDefault()V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    .line 460
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->notifyDataChanged()V

    .line 493
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectListView:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    const v1, 0x7f0e0231

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->createDialog(Landroid/view/View;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    .line 494
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$9;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private toggleApnDirectly(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->showSecurityDialog(IZ)V

    .line 340
    return-void
.end method

.method private toggleApnDirectly(IZ)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "isAT"    # Z

    .prologue
    const/16 v10, 0x3e9

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 416
    move v0, p2

    .line 417
    .local v0, "AT":Z
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 418
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 422
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 423
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 425
    const/16 v2, 0x7d0

    .line 429
    .local v2, "delayTime":I
    :goto_0
    const-string v7, "ApnSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mApnClickListener delayTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mHandler:Landroid/os/Handler;

    int-to-long v8, v2

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 434
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v5

    .line 435
    .local v1, "currApnEnabled":Z
    :goto_1
    const-string v7, "ApnSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggle apn, currApnEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",phoneId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v4, Landroid/content/Intent;

    const-string v7, "intent.action.systemui.data_change"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "slot_id"

    invoke-virtual {v4, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-string v7, "enabled"

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    const-string v5, "pkg"

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    return-void

    .line 427
    .end local v1    # "currApnEnabled":Z
    .end local v2    # "delayTime":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    const/16 v2, 0x2710

    .restart local v2    # "delayTime":I
    goto :goto_0

    :cond_2
    move v1, v6

    .line 434
    goto :goto_1

    .restart local v1    # "currApnEnabled":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    move v5, v6

    .line 439
    goto :goto_2
.end method

.method private updateApnSwitcher()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->isApnOn()Z

    move-result v1

    .line 229
    .local v1, "on":Z
    const-string v2, "ApnSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update Switcher_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mName:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", on is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTextColorLight:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 238
    :goto_1
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_0
    return-void

    .line 230
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTextColorDark:I

    goto :goto_0

    .line 236
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnSecurityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnSecurityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 562
    :cond_2
    return-void
.end method

.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 110
    return-void
.end method

.method public init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public isApnOn()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 299
    const/4 v5, 0x0

    .line 300
    .local v5, "on":Z
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 301
    const-string v6, "ApnSwitcher"

    const-string v7, "isApnOn(), isAirplaneModeOn = true"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v5, 0x0

    .line 335
    :goto_0
    return v5

    .line 304
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v8, v7}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v1

    .line 305
    .local v1, "isSlot1Insert":Z
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v8, v6}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v3

    .line 306
    .local v3, "isSlot2Insert":Z
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v8, v7}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v2

    .line 307
    .local v2, "isSlot1RadioOn":Z
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v8, v6}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v4

    .line 308
    .local v4, "isSlot2RadioOn":Z
    const-string v8, "ApnSwitcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isApnOn(), isSlot1Insert = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isSlot2Insert = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isSlot1RadioOn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isSlot2RadioOn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 310
    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    .line 311
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 314
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    move v5, v6

    .line 315
    :goto_1
    const-string v6, "ApnSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isApnOn(), SupportDualSIM, on = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 318
    const-string v6, "ApnSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isApnOn, e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    move v5, v7

    .line 314
    goto :goto_1

    .line 322
    :cond_5
    if-eqz v1, :cond_7

    .line 324
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v6

    .line 325
    :goto_2
    const-string v6, "ApnSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isApnOn(), on = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 326
    :catch_1
    move-exception v0

    .line 327
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 328
    const-string v6, "ApnSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isApnOn, e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    move v5, v7

    .line 324
    goto :goto_2

    .line 331
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public isDialogShowing()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "show":Z
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 567
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    move v0, v2

    .line 569
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnSecurityDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    .line 570
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnSecurityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    move v0, v2

    .line 572
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_5

    .line 573
    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    move v0, v2

    .line 575
    :cond_5
    :goto_2
    return v0

    :cond_6
    move v0, v1

    .line 567
    goto :goto_0

    :cond_7
    move v0, v1

    .line 570
    goto :goto_1

    :cond_8
    move v0, v1

    .line 573
    goto :goto_2
.end method

.method public onApnStateChanged()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->setRadioOnValue()V

    .line 549
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->updateApnSwitcher()V

    .line 550
    return-void
.end method

.method public prepare()V
    .locals 6

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->getSwitcherIcon()V

    .line 119
    new-instance v2, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$2;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnObserver:Landroid/database/ContentObserver;

    .line 134
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 135
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mApnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->updateApnSwitcher()V

    .line 103
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$3;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 178
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 225
    return-void
.end method

.method public setSimDataEnable(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 642
    move v0, p1

    .line 643
    .local v0, "dataSlot":I
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$13;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$13;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;I)V

    .line 653
    .local v1, "mThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 654
    return-void
.end method

.method public showNetworkModeSettingTip(I)V
    .locals 4
    .param p1, "slot"    # I

    .prologue
    .line 657
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    const-string v2, "ApnSwitcher"

    const-string v3, "alreay show a NetWork Mode dialog, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    const-string v2, "ApnSwitcher"

    const-string v3, "alreay show a sim dialog, dismiss"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 667
    :cond_1
    move v1, p1

    .line 668
    .local v1, "dataSlot":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mContext:Landroid/content/Context;

    const v3, 0x30f0004

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 669
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0249

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 670
    const v2, 0x7f0e0248

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 671
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 672
    const v2, 0x7f0e0247

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$14;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$14;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 680
    const v2, 0x7f0e0246

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$15;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$15;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 688
    const v2, 0x7f0e01e5

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$16;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$16;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    .line 696
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 697
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$17;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$17;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 704
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->mNetWorkModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method
