.class public Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "WifiApSwitcher.java"


# static fields
.field public static final MSG_REFRESH_SWITCHER_STATE:I = 0x3e9

.field public static final TAG:Ljava/lang/String; = "WifiApSwitcher"

.field public static sWifiApSwitcherClicked:Z


# instance fields
.field private mAirplaneModeOn:Z

.field private mFtTelephony:Landroid/telephony/FtTelephony;

.field private mHandler:Landroid/os/Handler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->sWifiApSwitcherClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 35
    const/16 v3, 0xb

    iput v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiApState:I

    .line 39
    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mHandler:Landroid/os/Handler;

    .line 52
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 53
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 54
    invoke-static {p1}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mFtTelephony:Landroid/telephony/FtTelephony;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->isAirplaneModeOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mAirplaneModeOn:Z

    .line 57
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;Landroid/os/Handler;)V

    .line 73
    .local v0, "apnObserver":Landroid/database/ContentObserver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 74
    .local v2, "phoneCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 75
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->refreshDisplayAndEnableWifiSwitcher()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiApState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->closeWifiIfNeeded()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->openWifiIfNeeded()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->turnToIntermediateStateIfNeeded(Z)V

    return-void
.end method

.method private closeWifiIfNeeded()V
    .locals 5

    .prologue
    .line 235
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 236
    .local v1, "wifiState":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 239
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_saved_state"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiApSwitcher"

    const-string v3, "closeWifiIfNeeded >>> operating database occurs errors!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 264
    const/4 v2, 0x0

    .line 266
    .local v2, "state":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 270
    :goto_0
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 271
    .local v0, "airplaneModeOn":Z
    :cond_0
    const-string v3, "WifiApSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAirplaneModeOn >>> airplaneModeOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return v0

    .line 267
    .end local v0    # "airplaneModeOn":Z
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "WifiApSwitcher"

    const-string v4, "isAirplaneModeOn >>> operating database occurs errors!"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openWifiIfNeeded()V
    .locals 4

    .prologue
    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->wasWifiOnBeforeOpeningWifiAp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 251
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiApSwitcher"

    const-string v2, "openWifiIfNeeded >>> operating database occurs errors!"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshDisplayAndEnableWifiSwitcher()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->refreshDisplay()V

    .line 231
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->sWifiApSwitcherClicked:Z

    .line 232
    return-void
.end method

.method private turnToIntermediateStateIfNeeded(Z)V
    .locals 5
    .param p1, "result"    # Z

    .prologue
    const/16 v4, 0x3e9

    .line 221
    const-string v0, "WifiApSwitcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick >>> result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->turnToIntermediateState()V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 227
    :cond_0
    return-void
.end method

.method private wasWifiOnBeforeOpeningWifiAp()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 260
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f02060c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f02060b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f02060a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 138
    return-void
.end method

.method public onAirplaneModeChanged()V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->isAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mAirplaneModeOn:Z

    .line 218
    return-void
.end method

.method public onWifiApStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0xb

    .line 197
    const-string v0, "WifiApSwitcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiApStateChanged >>> intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v0, "wifi_state"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiApState:I

    .line 204
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiApState:I

    if-ne v0, v3, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$5;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->refreshDisplayAndEnableWifiSwitcher()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->getSwitcherIcon()V

    .line 131
    return-void
.end method

.method public refreshDisplay()V
    .locals 8

    .prologue
    const/16 v7, 0x3e9

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 86
    const-string v2, "WifiApSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshDisplay >>> current wifi ap state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiApState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 89
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTextColorDark:I

    .line 90
    .local v1, "textColor":I
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mWifiApState:I

    packed-switch v2, :pswitch_data_0

    .line 110
    :goto_0
    if-nez v0, :cond_0

    .line 115
    :goto_1
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 94
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTextColorLight:I

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 98
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTextColorDark:I

    .line 100
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 104
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTextColorLight:I

    .line 106
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$3;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 174
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$4;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 194
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 120
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTextColorLight:I

    .line 125
    .local v1, "textColor":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
