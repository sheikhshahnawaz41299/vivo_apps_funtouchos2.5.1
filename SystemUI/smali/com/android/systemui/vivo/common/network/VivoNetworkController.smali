.class public Lcom/android/systemui/vivo/common/network/VivoNetworkController;
.super Landroid/content/BroadcastReceiver;
.source "VivoNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/network/VivoNetworkController$WifiHandler;
    }
.end annotation


# static fields
.field public static final NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field private static final TAG:Ljava/lang/String; = "VivoNetworkController"

.field private static signalStrengthIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DELAY_DECREASE:I

.field private final DELAY_INCREASE:I

.field private final MSG_DELAY_SIGNAL_STRENGTH:I

.field private dataTypeIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private delay:I

.field private mAirplaneMode:[Z

.field private mContext:Landroid/content/Context;

.field private mDataActivity:[I

.field private mDataActivityIconId:[I

.field private mDataConnected:[Z

.field private mDataNetType:[I

.field private mDataNetworkType:[I

.field private mDataServiceState:[I

.field private mDataSignalIconId:[I

.field private mDataState:[I

.field private mDataTypeIconId:[I

.field private mDataTypeIconIdWithSimSlot:[I

.field private mDataVisible:[Z

.field private mFlag:I

.field private mFtTelephony:Landroid/telephony/FtTelephony;

.field private mIMSState:[I

.field private mLastAirplaneMode:[Z

.field private mLastDataActivityIconId:[I

.field private mLastDataConnected:[Z

.field private mLastDataSignalIconId:[I

.field private mLastDataTypeIconId:[I

.field private mLastSimState:[I

.field private mLastVoiceSignalIconId:[I

.field private mLastVoiceTypeIconId:[I

.field private mLastWifiActivityIconId:I

.field private mLastWifiIconId:I

.field private mLastWifiLevel:I

.field private mLastWifiUnAvailableIconId:I

.field private mOperatorNumeric:[Ljava/lang/String;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneCount:I

.field private mPreciseDataConnectedState1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreciseDataConnectedState2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mSimState:[I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

.field private mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

.field private mVoiceNetworkType:[I

.field private mVoiceSignalIconId:[I

.field private mVoiceTypeIconId:[I

.field private mVoiceTypeIconIdWithSimSlot:[I

.field private mVolteSlotId:I

.field private mWifiActivity:I

.field private mWifiActivityIconId:I

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiConnected:Z

.field private mWifiEnabled:Z

.field private mWifiIconId:I

.field private mWifiLevel:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRssi:I

.field private mWifiSsid:Ljava/lang/String;

.field private mWifiToWifi:Z

.field private mWifiUnAvailable:Z

.field private mWifiUnAvailableIconId:I

.field private oldDataLevel:I

.field private oldLevel:[I

.field private oldVoiceLevel:I

.field private signalStrengthDelayHandler:Landroid/os/Handler;

.field private signalStrengthDelayHandler2:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 128
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 70
    iput v5, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    .line 77
    iput v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    .line 78
    iput v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    .line 79
    iput v5, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiIconId:I

    .line 80
    iput v5, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiActivityIconId:I

    .line 81
    iput v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivity:I

    .line 82
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailable:Z

    .line 83
    iput v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailableIconId:I

    .line 84
    iput v5, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiUnAvailableIconId:I

    .line 644
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    .line 645
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    .line 927
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldLevel:[I

    .line 928
    iput v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldDataLevel:I

    iput v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldVoiceLevel:I

    .line 929
    iput v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    .line 930
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->DELAY_INCREASE:I

    .line 931
    const/16 v2, 0x5dc

    iput v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->DELAY_DECREASE:I

    .line 932
    const/16 v2, 0x3e9

    iput v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->MSG_DELAY_SIGNAL_STRENGTH:I

    .line 933
    new-instance v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController$1;-><init>(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler:Landroid/os/Handler;

    .line 947
    new-instance v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController$2;-><init>(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler2:Landroid/os/Handler;

    .line 129
    iput-object p1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mContext:Landroid/content/Context;

    .line 130
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 131
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    .line 132
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 133
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFtTelephony:Landroid/telephony/FtTelephony;

    .line 135
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mIMSState:[I

    .line 137
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSimState:[I

    .line 138
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastSimState:[I

    .line 139
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mAirplaneMode:[Z

    .line 140
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastAirplaneMode:[Z

    .line 142
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 143
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    .line 144
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataServiceState:[I

    .line 146
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mOperatorNumeric:[Ljava/lang/String;

    .line 149
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    .line 150
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    .line 151
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    .line 152
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastVoiceTypeIconId:[I

    .line 155
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    .line 156
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastVoiceSignalIconId:[I

    .line 159
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    .line 160
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    .line 161
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    .line 162
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataTypeIconId:[I

    .line 165
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    .line 166
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataSignalIconId:[I

    .line 168
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    .line 169
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataConnected:[Z

    .line 170
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    .line 171
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataActivityIconId:[I

    .line 172
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivity:[I

    .line 173
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetType:[I

    .line 174
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataState:[I

    .line 175
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataVisible:[Z

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v3, v2, v1

    .line 179
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v3, v2, v1

    .line 180
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataServiceState:[I

    const/4 v3, 0x1

    aput v3, v2, v1

    .line 181
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivity:[I

    aput v4, v2, v1

    .line 182
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetType:[I

    aput v4, v2, v1

    .line 183
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataState:[I

    aput v4, v2, v1

    .line 184
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataVisible:[Z

    aput-boolean v4, v2, v1

    .line 185
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    aput-boolean v4, v2, v1

    .line 186
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataConnected:[Z

    aput-boolean v4, v2, v1

    .line 187
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    aput v5, v2, v1

    .line 188
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    aput v5, v2, v1

    .line 189
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    aput v5, v2, v1

    .line 190
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    aput v5, v2, v1

    .line 191
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aput v5, v2, v1

    .line 192
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aput v5, v2, v1

    .line 193
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mIMSState:[I

    aput v5, v2, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->createWifiHandler()V

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v2, "android.net.wifi.WIFI_TO_WIFI"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v2, "vivo_smart_wifi_wifi_is_available"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v2, "com.android.telephony.simactivated"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v2, "android.intent.action.ACTION_SIM_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/FtTelephony;->getImsStateChangeBroadcast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v2, "android.intent.action.ENABLE_HIGH_DEF_AUDIO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->initDataTypeIconMap()V

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->initSignalStrengthIconMap()V

    .line 219
    return-void

    .line 927
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivity:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/network/VivoNetworkController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoNetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivity:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshWifiView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/network/VivoNetworkController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoNetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrengthAgain(I)V

    return-void
.end method

.method private createWifiHandler()V
    .locals 4

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 396
    new-instance v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController$WifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController$WifiHandler;-><init>(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V

    .line 397
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 398
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 399
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 402
    :cond_0
    return-void
.end method

.method private getNetWorkType(IILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "subscription"    # I
    .param p3, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 754
    const/4 v0, -0x1

    .line 755
    .local v0, "netWorkType":I
    packed-switch p1, :pswitch_data_0

    .line 836
    :pswitch_0
    const/4 v0, -0x1

    .line 839
    :goto_0
    return v0

    .line 759
    :pswitch_1
    sget-object v1, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->TELECOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    const/4 v0, 0x7

    goto :goto_0

    .line 762
    :cond_0
    const/4 v0, 0x4

    .line 764
    goto :goto_0

    .line 766
    :pswitch_2
    sget-object v1, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->TELECOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    const/4 v0, 0x7

    goto :goto_0

    .line 770
    :cond_1
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isExport()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->UNICOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    const/4 v0, 0x4

    goto :goto_0

    .line 774
    :cond_2
    const/4 v0, 0x3

    .line 776
    goto :goto_0

    .line 780
    :pswitch_3
    const/4 v0, 0x7

    .line 781
    goto :goto_0

    .line 788
    :pswitch_4
    const/4 v0, 0x1

    .line 789
    goto :goto_0

    .line 793
    :pswitch_5
    sget-object v1, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->CMCC_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 794
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 796
    :cond_4
    const/4 v0, 0x5

    .line 798
    goto :goto_0

    .line 803
    :pswitch_6
    sget-object v1, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->AIRTEL_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v1, p2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isDcHspapServcie(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isSupportHSDPAP()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 806
    const/4 v0, 0x2

    goto :goto_0

    .line 809
    :cond_5
    const/4 v0, 0x6

    .line 811
    goto :goto_0

    .line 816
    :pswitch_7
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isExport()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->UNICOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 820
    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    .line 822
    :cond_7
    sget-object v1, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->TELECOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->isSupportCA()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 823
    const/16 v0, 0x9

    goto :goto_0

    .line 826
    :cond_8
    const/4 v0, 0x2

    .line 828
    goto/16 :goto_0

    .line 832
    :pswitch_8
    const/16 v0, 0x9

    .line 833
    goto/16 :goto_0

    .line 755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 683
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 684
    .local v0, "phoneId":I
    return v0
.end method

.method private hasService(I)Z
    .locals 5
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 896
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 897
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 898
    const-string v2, "VivoNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ss.getState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 904
    :pswitch_0
    const/4 v1, 0x1

    .line 907
    :cond_0
    :pswitch_1
    return v1

    .line 899
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 522
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 535
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 527
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 528
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 529
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    .line 531
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 532
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 535
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initDataTypeIconMap()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1334
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1433
    :goto_0
    return-void

    .line 1335
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    .line 1337
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v5, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v7, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v6, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v3, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v5, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v7, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v6, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataActivityIcon(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataActivityIcon(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v5, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataActivityIcon(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataActivityIcon(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v6, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataActivityIcon(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataActivityIcon(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-static {v4, v4}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataActivityIcon(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v3}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataActivityIcon(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private initSignalStrengthIconMap()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1437
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 1493
    :cond_0
    return-void

    .line 1438
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    .line 1440
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f020328

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f02032a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f020327

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f020329

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f020323

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f020324

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f020325

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f020326

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f020540

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f020546

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f02053f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f020545

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f020541

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f020542

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f020543

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f020544

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f020539

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f02053e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f02053a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f02053b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    const v4, 0x7f02053c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f02053d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    invoke-static {v6}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconList(I)[I

    move-result-object v1

    .line 1455
    .local v1, "keys":[I
    invoke-static {v7}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconList(I)[I

    move-result-object v2

    .line 1456
    .local v2, "values":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1457
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1460
    :cond_2
    invoke-static {v6, v6}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconList(II)[I

    move-result-object v1

    .line 1461
    invoke-static {v7, v6}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconList(II)[I

    move-result-object v2

    .line 1462
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 1463
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1465
    :cond_3
    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconList(II)[I

    move-result-object v1

    .line 1466
    invoke-static {v7, v7}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconList(II)[I

    move-result-object v2

    .line 1467
    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 1468
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1471
    :cond_4
    invoke-static {v6}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthSmallIconList(I)[I

    move-result-object v1

    .line 1472
    invoke-static {v7}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthSmallIconList(I)[I

    move-result-object v2

    .line 1473
    const/4 v0, 0x0

    :goto_3
    array-length v3, v1

    if-ge v0, v3, :cond_5

    .line 1474
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1477
    :cond_5
    invoke-static {v6, v6, v6}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconListRoaming(IZI)[I

    move-result-object v1

    .line 1478
    invoke-static {v6, v6, v7}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconListRoaming(IZI)[I

    move-result-object v2

    .line 1479
    const/4 v0, 0x0

    :goto_4
    array-length v3, v1

    if-ge v0, v3, :cond_6

    .line 1480
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1483
    :cond_6
    invoke-static {v6, v7, v6}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconListRoaming(IZI)[I

    move-result-object v1

    .line 1484
    invoke-static {v6, v7, v7}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconListRoaming(IZI)[I

    move-result-object v2

    .line 1485
    const/4 v0, 0x0

    :goto_5
    array-length v3, v1

    if-ge v0, v3, :cond_7

    .line 1486
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1488
    :cond_7
    invoke-static {v7, v7, v6}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconListRoaming(IZI)[I

    move-result-object v1

    .line 1489
    invoke-static {v7, v7, v7}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconListRoaming(IZI)[I

    move-result-object v2

    .line 1490
    const/4 v0, 0x0

    :goto_6
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1491
    sget-object v3, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private isCdma(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoaming(I)Z
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 918
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 919
    .local v0, "isRoaming":Z
    const-string v1, "VivoNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRoaming("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    return v0
.end method

.method private isSupportCA()Z
    .locals 3

    .prologue
    .line 843
    new-instance v0, Landroid/telephony/FtTelephonyApiParams;

    const-string v2, "API_TAG_isSupportCA"

    invoke-direct {v0, v2}, Landroid/telephony/FtTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 844
    .local v0, "param":Landroid/telephony/FtTelephonyApiParams;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v2, v0}, Landroid/telephony/FtTelephony;->commonApi(Landroid/telephony/FtTelephonyApiParams;)Landroid/telephony/FtTelephonyApiParams;

    move-result-object v1

    .line 845
    .local v1, "ret":Landroid/telephony/FtTelephonyApiParams;
    if-eqz v1, :cond_0

    .line 846
    const-string v2, "support_ca"

    invoke-virtual {v1, v2}, Landroid/telephony/FtTelephonyApiParams;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 848
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isValidSlotId(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 688
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshSignalClusterViews(I)V
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    .line 1908
    const-string v0, "VivoNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalClusterViews, subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cs type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ps type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cs signal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ps signal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDataConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    aget v3, v3, p1

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    aget v4, v4, p1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->setMobileDataIndicators(IIIII)V

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    if-eqz v0, :cond_1

    .line 1924
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->isShowDataActivityIcon(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    aget v3, v3, p1

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    aget v4, v4, p1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->setMobileDataIndicators(ZIIII)V

    .line 1931
    :cond_1
    return-void

    .line 1924
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshSignalViews(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastAirplaneMode:[Z

    aget-boolean v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mAirplaneMode:[Z

    aget-boolean v1, v1, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastSimState:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSimState:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastVoiceSignalIconId:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataSignalIconId:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastVoiceTypeIconId:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataTypeIconId:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataConnected:[Z

    aget-boolean v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    aget-boolean v1, v1, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataActivityIconId:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_1

    .line 1882
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalClusterViews(I)V

    .line 1884
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastSimState:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSimState:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_2

    .line 1885
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastSimState:[I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSimState:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 1887
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastVoiceSignalIconId:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_3

    .line 1888
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastVoiceSignalIconId:[I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 1890
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataSignalIconId:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_4

    .line 1891
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataSignalIconId:[I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 1893
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastVoiceTypeIconId:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_5

    .line 1894
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastVoiceTypeIconId:[I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 1896
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataTypeIconId:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_6

    .line 1897
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataTypeIconId:[I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 1899
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataConnected:[Z

    aget-boolean v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    aget-boolean v1, v1, p1

    if-eq v0, v1, :cond_7

    .line 1900
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataConnected:[Z

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    aget-boolean v1, v1, p1

    aput-boolean v1, v0, p1

    .line 1902
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataActivityIconId:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_8

    .line 1903
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastDataActivityIconId:[I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 1905
    :cond_8
    return-void
.end method

.method private refreshWifiCluster()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1867
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    if-eqz v0, :cond_0

    .line 1868
    const-string v3, "VivoNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWifiEnabled && mWifiConnected = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    if-eqz v3, :cond_2

    :goto_1
    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->setWifiIndicators(ZII)V

    .line 1871
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1868
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1869
    goto :goto_1
.end method

.method private refreshWifiUnAvailableView()V
    .locals 3

    .prologue
    .line 441
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiUnAvailableIconId:I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailableIconId:I

    if-eq v0, v1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailable:Z

    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailableIconId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->setWifiUnAvailableIcon(ZI)V

    .line 445
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailableIconId:I

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiUnAvailableIconId:I

    .line 447
    :cond_1
    return-void
.end method

.method private refreshWifiView()V
    .locals 2

    .prologue
    .line 1842
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1844
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    .line 1854
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiIconId:I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiActivityIconId:I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    if-eq v0, v1, :cond_2

    .line 1855
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshWifiCluster()V

    .line 1858
    :cond_2
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiIconId:I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    if-eq v0, v1, :cond_3

    .line 1859
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiIconId:I

    .line 1861
    :cond_3
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiActivityIconId:I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    if-eq v0, v1, :cond_4

    .line 1862
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiActivityIconId:I

    .line 1864
    :cond_4
    return-void

    .line 1846
    :cond_5
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v0, :cond_6

    .line 1847
    sget-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_ACTIVITY_COLOR:[I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivity:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    goto :goto_0

    .line 1848
    :cond_6
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-ne v0, v1, :cond_0

    .line 1849
    sget-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_ACTIVITY_WHITE:[I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivity:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    goto :goto_0
.end method

.method private resetPhoneState(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 358
    const-string v0, "VivoNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPhoneState, slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    aput v3, v0, p1

    .line 361
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aput v3, v0, p1

    .line 362
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    aput v3, v0, p1

    .line 363
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    aput v3, v0, p1

    .line 364
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataState:[I

    aput v3, v0, p1

    .line 365
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    aput-boolean v3, v0, p1

    .line 366
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aput v3, v0, p1

    .line 367
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aput v3, v0, p1

    .line 368
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 369
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalClusterViews(I)V

    .line 370
    return-void
.end method

.method private showSimSlot()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 883
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 884
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 890
    goto :goto_0

    :cond_1
    move v0, v1

    .line 892
    goto :goto_0
.end method

.method private updateAirplaneMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    if-ge v0, v1, :cond_2

    .line 378
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mAirplaneMode:[Z

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mContext:Landroid/content/Context;

    const-string v5, "airplane_mode_on"

    invoke-static {v1, v5, v3}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_1
    aput-boolean v1, v4, v0

    .line 379
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastAirplaneMode:[Z

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mAirplaneMode:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    move v1, v2

    :goto_2
    aput-boolean v1, v4, v0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 378
    goto :goto_1

    :cond_1
    move v1, v3

    .line 379
    goto :goto_2

    .line 381
    :cond_2
    return-void
.end method

.method private updateDataIcon(I)V
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x0

    .line 852
    const/4 v0, 0x0

    .line 864
    .local v0, "iconId":I
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aget v1, v1, p1

    if-nez v1, :cond_0

    .line 865
    const/4 v0, 0x0

    .line 866
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataVisible:[Z

    aput-boolean v3, v1, p1

    .line 877
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    aput v0, v1, p1

    .line 878
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataVisible:[Z

    aget-boolean v2, v2, p1

    aput-boolean v2, v1, p1

    .line 879
    const-string v1, "VivoNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDataConnected["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    return-void

    .line 868
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataState:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->isShowDataActivityIcon(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivity:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataActivityIcon(II)I

    move-result v0

    .line 871
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataVisible:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    goto :goto_0

    .line 873
    :cond_1
    const/4 v0, 0x0

    .line 874
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataVisible:[Z

    aput-boolean v3, v1, p1

    goto :goto_0
.end method

.method private updateDataNetType(II)V
    .locals 6
    .param p1, "dataNetType"    # I
    .param p2, "subscription"    # I

    .prologue
    const/4 v5, -0x1

    .line 731
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mOperatorNumeric:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->getNetWorkType(IILjava/lang/String;)I

    move-result v0

    .line 732
    .local v0, "dataType":I
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->showSimSlot()Z

    move-result v1

    .line 734
    .local v1, "isShowSimSlot":Z
    invoke-static {v0}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    .line 735
    .local v2, "mDataIconList":[I
    if-eqz v2, :cond_0

    .line 736
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    aget v4, v2, v4

    aput v4, v3, p2

    .line 741
    :goto_0
    if-eqz v1, :cond_1

    .line 742
    invoke-static {v0, p2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v2

    .line 746
    :goto_1
    if-eqz v2, :cond_2

    .line 747
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    iget v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    aget v4, v2, v4

    aput v4, v3, p2

    .line 751
    :goto_2
    return-void

    .line 738
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    aput v5, v3, p2

    goto :goto_0

    .line 744
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v2

    goto :goto_1

    .line 749
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    aput v5, v3, p2

    goto :goto_2
.end method

.method private updateHDIcon(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 351
    const-string v1, "VivoNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHDIcon, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->setHDIcon(Z)V

    .line 355
    :cond_0
    return-void

    .line 353
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIconSet(I)V
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 692
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    aput v1, v0, p1

    .line 697
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataServiceState:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    aput v1, v0, p1

    .line 702
    :goto_1
    const-string v0, "VivoNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIconSet, subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cs type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ps type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    aput v2, v0, p1

    goto :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aput v2, v0, p1

    goto :goto_1
.end method

.method private updateSimState(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 384
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const-string v1, "slot"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 386
    .local v0, "sub":I
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSimState:[I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    aput v2, v1, v0

    .line 387
    const-string v1, "VivoNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimState, mSimState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSimState:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local v0    # "sub":I
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSimState:[I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0
.end method

.method private updateTelephonySignalStrength(I)V
    .locals 19
    .param p1, "subscription"    # I

    .prologue
    .line 966
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v11

    .line 967
    .local v11, "distinguish":Z
    const/4 v13, 0x0

    .line 968
    .local v13, "isSIM1Insert":Z
    const/4 v15, 0x0

    .line 969
    .local v15, "isSIM2Insert":Z
    const/4 v14, 0x0

    .line 970
    .local v14, "isSIM1RadioOn":Z
    const/16 v16, 0x0

    .line 971
    .local v16, "isSIM2RadioOn":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v13

    .line 972
    if-eqz v13, :cond_0

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v14

    .line 975
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v15

    .line 977
    if-eqz v15, :cond_1

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v16

    .line 981
    :cond_1
    const-string v2, "VivoNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSIM1Insert = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSIM2Insert = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSIM1RadioOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSIM2RadioOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mOperatorNumeric:[Ljava/lang/String;

    aget-object v4, v3, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    aget v3, v3, p1

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aget v3, v3, p1

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v6

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->isRoaming(I)Z

    move-result v7

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isShowDualSignal(ILjava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, p1

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 990
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v2, :cond_5

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f02056a

    :goto_0
    aput v2, v3, p1

    .line 1047
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, p1

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataServiceState:[I

    aget v2, v2, p1

    if-eqz v2, :cond_15

    .line 1050
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v2, :cond_13

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_12

    const v2, 0x7f02056a

    :goto_2
    aput v2, v3, p1

    .line 1330
    :goto_3
    return-void

    .line 991
    :cond_4
    const v2, 0x7f02059a

    goto :goto_0

    .line 993
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f02056b

    :goto_4
    aput v2, v3, p1

    goto :goto_1

    :cond_6
    const v2, 0x7f02059b

    goto :goto_4

    .line 998
    :cond_7
    sget-object v2, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->TELECOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mOperatorNumeric:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v18

    .line 1003
    .local v18, "voiceLevel":I
    :goto_5
    if-gez v18, :cond_8

    .line 1004
    const/16 v18, 0x0

    .line 1006
    :cond_8
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x4

    :goto_6
    move/from16 v0, v18

    if-le v0, v2, :cond_9

    .line 1007
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v18, 0x4

    .line 1009
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthSmallIconList(I)[I

    move-result-object v17

    .line 1010
    .local v17, "signalList":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aget v3, v17, v18

    aput v3, v2, p1

    .line 1014
    if-nez p1, :cond_f

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1019
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldVoiceLevel:I

    sub-int v8, v18, v2

    .line 1020
    .local v8, "change":I
    const/4 v2, 0x1

    if-gt v8, v2, :cond_a

    const/4 v2, -0x1

    if-ge v8, v2, :cond_b

    .line 1021
    :cond_a
    const/16 v2, 0x1f4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    .line 1022
    if-lez v8, :cond_10

    .line 1023
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldVoiceLevel:I

    add-int/lit8 v18, v2, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldVoiceLevel:I

    .line 1028
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aget v3, v17, v18

    aput v3, v2, p1

    .line 1031
    if-nez p1, :cond_11

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1033
    .local v10, "delayMessage":Landroid/os/Message;
    move/from16 v0, p1

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    int-to-long v4, v3

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1041
    .end local v10    # "delayMessage":Landroid/os/Message;
    :cond_b
    :goto_a
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldVoiceLevel:I

    .line 1043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aget v3, v3, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v4, v4, p1

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->applyQuickly(III)V

    goto/16 :goto_1

    .line 1001
    .end local v8    # "change":I
    .end local v17    # "signalList":[I
    .end local v18    # "voiceLevel":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v18

    .restart local v18    # "voiceLevel":I
    goto/16 :goto_5

    .line 1006
    :cond_d
    const/4 v2, 0x5

    goto/16 :goto_6

    .line 1007
    :cond_e
    const/16 v18, 0x5

    goto/16 :goto_7

    .line 1017
    .restart local v17    # "signalList":[I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler2:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_8

    .line 1025
    .restart local v8    # "change":I
    :cond_10
    const/16 v2, 0x5dc

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    .line 1026
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldVoiceLevel:I

    add-int/lit8 v18, v2, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldVoiceLevel:I

    goto :goto_9

    .line 1036
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler2:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1037
    .restart local v10    # "delayMessage":Landroid/os/Message;
    move/from16 v0, p1

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler2:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    int-to-long v4, v3

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    .line 1051
    .end local v8    # "change":I
    .end local v10    # "delayMessage":Landroid/os/Message;
    .end local v17    # "signalList":[I
    .end local v18    # "voiceLevel":I
    :cond_12
    const v2, 0x7f02059a

    goto/16 :goto_2

    .line 1053
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_14

    const v2, 0x7f02056b

    :goto_b
    aput v2, v3, p1

    goto/16 :goto_3

    :cond_14
    const v2, 0x7f02059b

    goto :goto_b

    .line 1058
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v9

    .line 1059
    .local v9, "dataLevel":I
    if-gez v9, :cond_16

    .line 1060
    const/4 v9, 0x0

    .line 1062
    :cond_16
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x4

    :goto_c
    if-le v9, v2, :cond_17

    .line 1063
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v9, 0x4

    .line 1065
    :cond_17
    :goto_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthSmallIconList(I)[I

    move-result-object v17

    .line 1066
    .restart local v17    # "signalList":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v17, v9

    aput v3, v2, p1

    .line 1070
    if-nez p1, :cond_1c

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1075
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldDataLevel:I

    sub-int v8, v9, v2

    .line 1076
    .restart local v8    # "change":I
    const/4 v2, 0x1

    if-gt v8, v2, :cond_18

    const/4 v2, -0x1

    if-ge v8, v2, :cond_19

    .line 1077
    :cond_18
    const/16 v2, 0x1f4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    .line 1078
    if-lez v8, :cond_1d

    .line 1079
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldDataLevel:I

    add-int/lit8 v9, v2, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldDataLevel:I

    .line 1084
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v17, v9

    aput v3, v2, p1

    .line 1087
    if-nez p1, :cond_1e

    .line 1088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1089
    .restart local v10    # "delayMessage":Landroid/os/Message;
    move/from16 v0, p1

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    int-to-long v4, v3

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1097
    .end local v10    # "delayMessage":Landroid/os/Message;
    :cond_19
    :goto_10
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldDataLevel:I

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aget v3, v3, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v4, v4, p1

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->applyQuickly(III)V

    goto/16 :goto_3

    .line 1062
    .end local v8    # "change":I
    .end local v17    # "signalList":[I
    :cond_1a
    const/4 v2, 0x5

    goto/16 :goto_c

    .line 1063
    :cond_1b
    const/4 v9, 0x5

    goto :goto_d

    .line 1073
    .restart local v17    # "signalList":[I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler2:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_e

    .line 1081
    .restart local v8    # "change":I
    :cond_1d
    const/16 v2, 0x5dc

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    .line 1082
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldDataLevel:I

    add-int/lit8 v9, v2, -0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldDataLevel:I

    goto :goto_f

    .line 1092
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler2:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1093
    .restart local v10    # "delayMessage":Landroid/os/Message;
    move/from16 v0, p1

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler2:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    int-to-long v4, v3

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10

    .line 1102
    .end local v8    # "change":I
    .end local v9    # "dataLevel":I
    .end local v10    # "delayMessage":Landroid/os/Message;
    .end local v17    # "signalList":[I
    :cond_1f
    if-nez p1, :cond_31

    .line 1103
    if-nez v13, :cond_24

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->alwayShowSIMIcon()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1105
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-ne v2, v3, :cond_21

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const v3, 0x7f020324

    aput v3, v2, p1

    .line 1129
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v3, p1

    aput v3, v2, p1

    goto/16 :goto_3

    .line 1112
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const v3, 0x7f020329

    aput v3, v2, p1

    goto :goto_11

    .line 1119
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const v3, 0x7f020323

    aput v3, v2, p1

    goto :goto_11

    .line 1122
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const v3, 0x7f020329

    aput v3, v2, p1

    goto :goto_11

    .line 1127
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v3, 0x0

    aput v3, v2, p1

    goto :goto_11

    .line 1131
    :cond_24
    if-nez v14, :cond_40

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->alwayShowSIMIcon()Z

    move-result v2

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v15, :cond_25

    if-eqz v16, :cond_25

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 1166
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v3, p1

    aput v3, v2, p1

    goto/16 :goto_3

    .line 1136
    :cond_25
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-ne v2, v3, :cond_2b

    .line 1137
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isNetEntryVersion()Z

    move-result v2

    if-nez v2, :cond_27

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_26

    const v2, 0x7f02053e

    :goto_13
    aput v2, v3, p1

    goto :goto_12

    :cond_26
    const v2, 0x7f020545

    goto :goto_13

    .line 1143
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_28

    const v2, 0x7f02053b

    :goto_14
    aput v2, v3, p1

    goto :goto_12

    :cond_28
    const v2, 0x7f020542

    goto :goto_14

    .line 1146
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_2a

    const v2, 0x7f02053b

    :goto_15
    aput v2, v3, p1

    goto :goto_12

    :cond_2a
    const v2, 0x7f020545

    goto :goto_15

    .line 1151
    :cond_2b
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isNetEntryVersion()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_2c

    const v2, 0x7f020539

    :goto_16
    aput v2, v3, p1

    goto/16 :goto_12

    :cond_2c
    const v2, 0x7f02053f

    goto :goto_16

    .line 1157
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_2e

    const v2, 0x7f02053a

    :goto_17
    aput v2, v3, p1

    goto/16 :goto_12

    :cond_2e
    const v2, 0x7f020541

    goto :goto_17

    .line 1160
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_30

    const v2, 0x7f020539

    :goto_18
    aput v2, v3, p1

    goto/16 :goto_12

    :cond_30
    const v2, 0x7f02053f

    goto :goto_18

    .line 1169
    :cond_31
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_40

    .line 1170
    if-nez v15, :cond_34

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->alwayShowSIMIcon()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1172
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-ne v2, v3, :cond_32

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const v3, 0x7f020326

    aput v3, v2, p1

    .line 1188
    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v3, p1

    aput v3, v2, p1

    goto/16 :goto_3

    .line 1182
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const v3, 0x7f020325

    aput v3, v2, p1

    goto :goto_19

    .line 1186
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v3, 0x0

    aput v3, v2, p1

    goto :goto_19

    .line 1190
    :cond_34
    if-nez v16, :cond_40

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->alwayShowSIMIcon()Z

    move-result v2

    if-nez v2, :cond_35

    if-nez v13, :cond_3f

    .line 1192
    :cond_35
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-ne v2, v3, :cond_3a

    .line 1195
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isNetEntryVersion()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1196
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_37

    const v2, 0x7f02053d

    :goto_1a
    aput v2, v3, p1

    .line 1212
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v3, p1

    aput v3, v2, p1

    goto/16 :goto_3

    .line 1196
    :cond_37
    const v2, 0x7f020544

    goto :goto_1a

    .line 1198
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_39

    const v2, 0x7f02053e

    :goto_1c
    aput v2, v3, p1

    goto :goto_1b

    :cond_39
    const v2, 0x7f020545

    goto :goto_1c

    .line 1203
    :cond_3a
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isNetEntryVersion()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1204
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_3c

    const v2, 0x7f02053c

    :goto_1d
    aput v2, v3, p1

    goto :goto_1b

    :cond_3c
    const v2, 0x7f020543

    goto :goto_1d

    .line 1206
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_3e

    const v2, 0x7f020539

    :goto_1e
    aput v2, v3, p1

    goto :goto_1b

    :cond_3e
    const v2, 0x7f02053f

    goto :goto_1e

    .line 1210
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v3, 0x0

    aput v3, v2, p1

    goto :goto_1b

    .line 1216
    :cond_40
    const-string v2, "VivoNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataServiceState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataServiceState:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_4c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataServiceState:[I

    aget v2, v2, p1

    if-eqz v2, :cond_4c

    .line 1219
    const-string v2, "VivoNetworkController"

    const-string v3, "No service 1"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    if-eqz v11, :cond_48

    .line 1221
    if-nez p1, :cond_44

    .line 1222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v2, :cond_42

    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_41

    const v2, 0x7f02054d

    :goto_1f
    aput v2, v3, p1

    .line 1241
    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v3, p1

    aput v3, v2, p1

    goto/16 :goto_3

    .line 1223
    :cond_41
    const v2, 0x7f020575

    goto :goto_1f

    .line 1225
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_43

    const v2, 0x7f02054e

    :goto_21
    aput v2, v3, p1

    goto :goto_20

    :cond_43
    const v2, 0x7f020576

    goto :goto_21

    .line 1228
    :cond_44
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v2, :cond_46

    .line 1229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_45

    const v2, 0x7f02054f

    :goto_22
    aput v2, v3, p1

    goto :goto_20

    :cond_45
    const v2, 0x7f020577

    goto :goto_22

    .line 1231
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_47

    const v2, 0x7f020550

    :goto_23
    aput v2, v3, p1

    goto :goto_20

    :cond_47
    const v2, 0x7f020578

    goto :goto_23

    .line 1235
    :cond_48
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v2, :cond_4a

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_49

    const v2, 0x7f02054c

    :goto_24
    aput v2, v3, p1

    goto :goto_20

    :cond_49
    const v2, 0x7f020574

    goto :goto_24

    .line 1238
    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_4b

    const v2, 0x7f020551

    :goto_25
    aput v2, v3, p1

    goto :goto_20

    :cond_4b
    const v2, 0x7f020579

    goto :goto_25

    .line 1244
    :cond_4c
    const-string v2, "VivoNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSignalStrength["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mServiceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    if-nez v2, :cond_59

    .line 1246
    :cond_4d
    const-string v2, "VivoNetworkController"

    const-string v3, "No service 2"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    if-eqz v11, :cond_55

    .line 1248
    if-nez p1, :cond_51

    .line 1249
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v2, :cond_4f

    .line 1250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_4e

    const v2, 0x7f02054d

    :goto_26
    aput v2, v3, p1

    .line 1268
    :goto_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v3, p1

    aput v3, v2, p1

    goto/16 :goto_3

    .line 1250
    :cond_4e
    const v2, 0x7f020575

    goto :goto_26

    .line 1252
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_50

    const v2, 0x7f02054e

    :goto_28
    aput v2, v3, p1

    goto :goto_27

    :cond_50
    const v2, 0x7f020576

    goto :goto_28

    .line 1255
    :cond_51
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v2, :cond_53

    .line 1256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_52

    const v2, 0x7f02054f

    :goto_29
    aput v2, v3, p1

    goto :goto_27

    :cond_52
    const v2, 0x7f020577

    goto :goto_29

    .line 1258
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_54

    const v2, 0x7f020550

    :goto_2a
    aput v2, v3, p1

    goto :goto_27

    :cond_54
    const v2, 0x7f020578

    goto :goto_2a

    .line 1262
    :cond_55
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v2, :cond_57

    .line 1263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_56

    const v2, 0x7f02054c

    :goto_2b
    aput v2, v3, p1

    goto :goto_27

    :cond_56
    const v2, 0x7f020574

    goto :goto_2b

    .line 1265
    :cond_57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_58

    const v2, 0x7f020551

    :goto_2c
    aput v2, v3, p1

    goto :goto_27

    :cond_58
    const v2, 0x7f020579

    goto :goto_2c

    .line 1273
    :cond_59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v12

    .line 1275
    .local v12, "iconLevel":I
    if-gez v12, :cond_5a

    .line 1276
    const/4 v12, 0x0

    .line 1278
    :cond_5a
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_5e

    const/4 v2, 0x4

    :goto_2d
    if-le v12, v2, :cond_5b

    .line 1279
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->is4Signal()Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v12, 0x4

    .line 1282
    :cond_5b
    :goto_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->isRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1283
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    move/from16 v0, p1

    invoke-static {v0, v11, v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconListRoaming(IZI)[I

    move-result-object v17

    .line 1291
    .restart local v17    # "signalList":[I
    :goto_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v17, v12

    aput v3, v2, p1

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v3, p1

    aput v3, v2, p1

    .line 1296
    if-nez p1, :cond_62

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1301
    :goto_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldLevel:[I

    aget v2, v2, p1

    sub-int v8, v12, v2

    .line 1302
    .restart local v8    # "change":I
    const/4 v2, 0x1

    if-gt v8, v2, :cond_5c

    const/4 v2, -0x1

    if-ge v8, v2, :cond_5d

    .line 1303
    :cond_5c
    const/16 v2, 0x1f4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    .line 1304
    if-lez v8, :cond_63

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldLevel:[I

    aget v3, v2, p1

    add-int/lit8 v12, v3, 0x1

    aput v12, v2, p1

    .line 1310
    :goto_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v17, v12

    aput v3, v2, p1

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v3, v3, p1

    aput v3, v2, p1

    .line 1314
    if-nez p1, :cond_64

    .line 1315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1316
    .restart local v10    # "delayMessage":Landroid/os/Message;
    move/from16 v0, p1

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    int-to-long v4, v3

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1324
    .end local v10    # "delayMessage":Landroid/os/Message;
    :cond_5d
    :goto_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldLevel:[I

    aput v12, v2, p1

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    aget v3, v3, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    aget v4, v4, p1

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->applyQuickly(III)V

    goto/16 :goto_3

    .line 1278
    .end local v8    # "change":I
    .end local v17    # "signalList":[I
    :cond_5e
    const/4 v2, 0x5

    goto/16 :goto_2d

    .line 1279
    :cond_5f
    const/4 v12, 0x5

    goto/16 :goto_2e

    .line 1285
    :cond_60
    if-eqz v11, :cond_61

    .line 1286
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconList(II)[I

    move-result-object v17

    .restart local v17    # "signalList":[I
    goto/16 :goto_2f

    .line 1288
    .end local v17    # "signalList":[I
    :cond_61
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getTelephonySignalStrengthIconList(I)[I

    move-result-object v17

    .restart local v17    # "signalList":[I
    goto/16 :goto_2f

    .line 1299
    :cond_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler2:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_30

    .line 1307
    .restart local v8    # "change":I
    :cond_63
    const/16 v2, 0x5dc

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->oldLevel:[I

    aget v3, v2, p1

    add-int/lit8 v12, v3, -0x1

    aput v12, v2, p1

    goto/16 :goto_31

    .line 1319
    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler2:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1320
    .restart local v10    # "delayMessage":Landroid/os/Message;
    move/from16 v0, p1

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthDelayHandler2:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->delay:I

    int-to-long v4, v3

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_32
.end method

.method private updateTelephonySignalStrengthAgain(I)V
    .locals 0
    .param p1, "sub"    # I

    .prologue
    .line 962
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 963
    return-void
.end method

.method private updateVoLTE(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    .line 329
    const-string v0, "VivoNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVoLTE, slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVolteSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDataNetType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataState:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    if-eq p1, v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aget v0, v0, p1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aget v0, v0, p1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mIMSState:[I

    aget v0, v0, p1

    if-ne v0, v3, :cond_3

    .line 339
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->setVoLte(Z)V

    goto :goto_0

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->setVoLte(Z)V

    goto :goto_0
.end method

.method private updateVoiceNetType(II)V
    .locals 6
    .param p1, "voiceNetType"    # I
    .param p2, "subscription"    # I

    .prologue
    const/4 v5, -0x1

    .line 708
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mOperatorNumeric:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->getNetWorkType(IILjava/lang/String;)I

    move-result v2

    .line 709
    .local v2, "voiceType":I
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->showSimSlot()Z

    move-result v0

    .line 711
    .local v0, "isShowSimSlot":Z
    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    .line 712
    .local v1, "mVoiceIconList":[I
    if-eqz v1, :cond_0

    .line 713
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    aget v4, v1, v4

    aput v4, v3, p2

    .line 718
    :goto_0
    if-eqz v0, :cond_1

    .line 719
    invoke-static {v2, p2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(II)[I

    move-result-object v1

    .line 723
    :goto_1
    if-eqz v1, :cond_2

    .line 724
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    iget v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    aget v4, v1, v4

    aput v4, v3, p2

    .line 728
    :goto_2
    return-void

    .line 715
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    aput v5, v3, p2

    goto :goto_0

    .line 721
    :cond_1
    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoTelephonyIcons;->getDataTypeIconListGemini(I)[I

    move-result-object v1

    goto :goto_1

    .line 726
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    aput v5, v3, p2

    goto :goto_2
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_3

    .line 502
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v0, :cond_1

    .line 503
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiToWifi:Z

    if-eqz v0, :cond_0

    .line 504
    sget-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_TO_WIFI_COLOR:[I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    .line 518
    :goto_0
    const-string v0, "VivoNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWifiIcons mWifiConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWifiIconId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void

    .line 506
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_SIGNAL_STRENGTH_COLOR:[I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    goto :goto_0

    .line 509
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiToWifi:Z

    if-eqz v0, :cond_2

    .line 510
    sget-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_TO_WIFI_WHITE:[I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    goto :goto_0

    .line 512
    :cond_2
    sget-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_SIGNAL_STRENGTH_WHITE:[I

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    goto :goto_0

    .line 516
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    goto :goto_0
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x3

    .line 450
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 452
    const-string v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_1

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiEnabled:Z

    .line 454
    const-string v6, "VivoNetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateWifiIcons()V

    .line 498
    return-void

    :cond_1
    move v6, v7

    .line 452
    goto :goto_0

    .line 455
    :cond_2
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 457
    :try_start_0
    const-string v8, "networkInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 458
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    .line 459
    .local v5, "wasConnected":Z
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    .line 460
    const-string v6, "VivoNetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiConnected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    if-eqz v6, :cond_7

    if-nez v5, :cond_7

    .line 462
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiToWifi:Z

    .line 463
    const-string v6, "wifiInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiInfo;

    .line 464
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    if-nez v2, :cond_3

    .line 465
    iget-object v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 467
    :cond_3
    if-eqz v2, :cond_6

    .line 468
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiSsid:Ljava/lang/String;

    .line 477
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiToWifi:Z

    invoke-virtual {v6, v7}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->setWifiToWifi(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 478
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v5    # "wasConnected":Z
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "VivoNetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get wifiInfo error, e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v5    # "wasConnected":Z
    :cond_5
    move v6, v7

    .line 459
    goto :goto_2

    .line 470
    .restart local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 472
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    if-nez v6, :cond_8

    .line 473
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 474
    :cond_8
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    if-eqz v6, :cond_4

    .line 475
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiToWifi:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 481
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v5    # "wasConnected":Z
    :cond_9
    const-string v7, "android.net.wifi.WIFI_TO_WIFI"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 482
    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiToWifi:Z

    .line 483
    const-string v6, "lastRssi"

    sget v7, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 484
    .local v3, "mLastRssi":I
    sget v6, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v3, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiLevel:I

    .line 485
    iget v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiLevel:I

    if-le v6, v10, :cond_a

    .line 486
    iput v10, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiLevel:I

    .line 488
    :cond_a
    const-string v6, "VivoNetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLastRssi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mLastWifiLevel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mLastWifiLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiToWifi:Z

    invoke-virtual {v6, v7}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->setWifiToWifi(Z)V

    goto/16 :goto_1

    .line 490
    .end local v3    # "mLastRssi":I
    :cond_b
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 491
    const-string v6, "newRssi"

    const/16 v7, -0xc8

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiRssi:I

    .line 492
    iget v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiRssi:I

    sget v7, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v6, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiLevel:I

    .line 493
    iget v6, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiLevel:I

    if-le v6, v10, :cond_0

    .line 494
    iput v10, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiLevel:I

    goto/16 :goto_1
.end method

.method private updateWifiUnAvailableIcon(Z)V
    .locals 1
    .param p1, "wifiUnAvailable"    # Z

    .prologue
    .line 429
    if-eqz p1, :cond_1

    .line 430
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v0, :cond_0

    .line 431
    const v0, 0x7f020635

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailableIconId:I

    .line 438
    :goto_0
    return-void

    .line 433
    :cond_0
    const v0, 0x7f020636

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailableIconId:I

    goto :goto_0

    .line 436
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailableIconId:I

    goto :goto_0
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;)V
    .locals 0
    .param p1, "clusterLeft"    # Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;
    .param p2, "clusterRight"    # Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    .line 1838
    iput-object p2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    .line 1839
    return-void
.end method

.method public isShowDataActivityIcon(I)Z
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 647
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 648
    .local v0, "apn":Ljava/lang/String;
    const-string v4, "VivoNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isShowDataActivityIcon(), current connected apn type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subscription = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 650
    .end local v0    # "apn":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    .restart local v0    # "apn":Ljava/lang/String;
    const-string v4, "VivoNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isShowDataActivityIcon(), current connected apn type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subscription = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 653
    .end local v0    # "apn":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_5

    .line 654
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 655
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    const-string v5, "ims"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    const-string v5, "emergency"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 678
    :cond_2
    :goto_2
    return v2

    .line 659
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 660
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    const-string v5, "ims"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    const-string v5, "emergency"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_4
    move v2, v3

    .line 678
    goto :goto_2

    .line 666
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 667
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    const-string v5, "ims"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    const-string v5, "emergency"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 671
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 672
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    const-string v5, "ims"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    const-string v5, "emergency"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2
.end method

.method public onCallStateChanged(IILjava/lang/String;)V
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "state"    # I
    .param p3, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClockVisibility()V

    .line 578
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 580
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalViews(I)V

    .line 582
    :cond_1
    return-void
.end method

.method public onDataActivity(II)V
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "direction"    # I

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivity:[I

    aput p2, v0, p1

    .line 609
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateDataIcon(I)V

    .line 610
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalViews(I)V

    .line 611
    return-void
.end method

.method public onDataConnectionStateChanged(III)V
    .locals 3
    .param p1, "subscription"    # I
    .param p2, "state"    # I
    .param p3, "networkType"    # I

    .prologue
    .line 585
    const-string v0, "VivoNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged, subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaultDataSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", networkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataState:[I

    aput p2, v0, p1

    .line 592
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetType:[I

    aput p3, v0, p1

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateVoiceNetType(II)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateDataNetType(II)V

    .line 602
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateDataIcon(I)V

    .line 603
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalViews(I)V

    .line 604
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateVoLTE(I)V

    .line 605
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataState:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 596
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetType:[I

    aput p3, v0, p1

    goto :goto_0
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 5
    .param p1, "subscription"    # I
    .param p2, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    .line 614
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionAPNType()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "apnType":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result v1

    .line 616
    .local v1, "dataState":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 617
    if-nez p1, :cond_1

    .line 618
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_0
    :goto_0
    const-string v2, "VivoNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreciseDataConnectionStateChanged: subscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", put apnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dataState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into mPreciseDataConnectedState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_1
    return-void

    .line 622
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 623
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 630
    :cond_2
    if-nez p1, :cond_4

    .line 631
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 632
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState1:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 639
    :cond_3
    :goto_2
    const-string v2, "VivoNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreciseDataConnectionStateChanged: subscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remove apnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dataState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from mPreciseDataConnectedState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 635
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 636
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPreciseDataConnectedState2:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "action":Ljava/lang/String;
    const-string v9, "VivoNetworkController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v9, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.net.wifi.WIFI_TO_WIFI"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 229
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateWifiState(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshWifiView()V

    .line 325
    :cond_1
    :goto_1
    return-void

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "VivoNetworkController"

    const-string v10, "Failed to update wifi state."

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v9, "vivo_smart_wifi_wifi_is_available"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 236
    const-string v9, "no_internet_access"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailable:Z

    .line 237
    const-string v9, "VivoNetworkController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWifiUnAvailable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailable:Z

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateWifiUnAvailableIcon(Z)V

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshWifiUnAvailableView()V

    goto :goto_1

    .line 240
    :cond_3
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateAirplaneMode()V

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshWifiView()V

    .line 243
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalViews(I)V

    .line 244
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 245
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalViews(I)V

    goto :goto_1

    .line 247
    :cond_4
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 248
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->setSIMInsertState()V

    .line 249
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 250
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 251
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalViews(I)V

    .line 252
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 253
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 254
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalViews(I)V

    goto/16 :goto_1

    .line 256
    :cond_5
    const-string v9, "com.android.telephony.simactivated"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 257
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateIconSet(I)V

    .line 258
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateVoiceNetType(II)V

    .line 259
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateDataNetType(II)V

    .line 260
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 261
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalClusterViews(I)V

    .line 262
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 263
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateIconSet(I)V

    .line 264
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateVoiceNetType(II)V

    .line 265
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateDataNetType(II)V

    .line 266
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 267
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalClusterViews(I)V

    goto/16 :goto_1

    .line 269
    :cond_6
    const-string v9, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 271
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 272
    .local v5, "mSimInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v5, :cond_7

    .line 273
    const-string v9, "VivoNetworkController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSimInfoList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mPhoneCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_7
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_9

    .line 276
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    if-ge v2, v9, :cond_d

    .line 277
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->resetPhoneState(I)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 279
    .end local v2    # "i":I
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    if-ge v9, v10, :cond_d

    .line 280
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mPhoneCount:I

    if-ge v2, v9, :cond_d

    .line 281
    const/4 v8, 0x1

    .line 282
    .local v8, "subNull":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 283
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    const-string v9, "VivoNetworkController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "info.slotId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", i = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    if-ne v9, v2, :cond_a

    .line 285
    const/4 v8, 0x0

    .line 289
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_b
    if-eqz v8, :cond_c

    .line 290
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->resetPhoneState(I)V

    .line 280
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 294
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "subNull":Z
    :cond_d
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->setSIMInsertState()V

    .line 295
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->setRadioOnValue()V

    goto/16 :goto_1

    .line 296
    .end local v5    # "mSimInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_e
    const-string v9, "android.intent.action.ACTION_SIM_MODE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 297
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->setRadioOnValue()V

    .line 298
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateIconSet(I)V

    .line 299
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateVoiceNetType(II)V

    .line 300
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateDataNetType(II)V

    .line 301
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 302
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalClusterViews(I)V

    .line 303
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 304
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateIconSet(I)V

    .line 305
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateVoiceNetType(II)V

    .line 306
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateDataNetType(II)V

    .line 307
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 308
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalClusterViews(I)V

    goto/16 :goto_1

    .line 310
    :cond_f
    const-string v9, "android.intent.action.ENABLE_HIGH_DEF_AUDIO"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 311
    const-string v9, "HD_STATE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 312
    .local v7, "state":I
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateHDIcon(I)V

    goto/16 :goto_1

    .line 313
    .end local v7    # "state":I
    :cond_10
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/FtTelephony;->getImsStateChangeBroadcast()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 314
    const-string v9, "regState"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 315
    .local v6, "reg":I
    const-string v9, "slot"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    .line 316
    const-string v9, "VivoNetworkController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive from TelephonyIntents.ACTION_IMS_STATE_CHANGED: slotId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", reg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_11

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    .line 318
    :cond_11
    iget v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_12

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    .line 319
    :cond_12
    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    iget v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    if-eqz v9, :cond_13

    iget v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 322
    :cond_13
    iget-object v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mIMSState:[I

    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    aput v6, v9, v10

    .line 323
    iget v9, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVolteSlotId:I

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateVoLTE(I)V

    goto/16 :goto_1
.end method

.method public onServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "subscription"    # I
    .param p2, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 554
    const-string v0, "VivoNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged, subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p2, v0, p1

    .line 556
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mOperatorNumeric:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 558
    const-string v0, "ro.config.combined_signal"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataServiceState:[I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    aput v1, v0, p1

    .line 565
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateIconSet(I)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateVoiceNetType(II)V

    .line 567
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateDataNetType(II)V

    .line 568
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 569
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateDataIcon(I)V

    .line 570
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalViews(I)V

    .line 571
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateVoLTE(I)V

    .line 572
    return-void
.end method

.method public onSignalStrengthsChanged(ILandroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "subscription"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 539
    const-string v1, "VivoNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged received on subscription : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", signalStrength = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p2, v0, p1

    .line 547
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceNetworkType:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateVoiceNetType(II)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataNetworkType:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateDataNetType(II)V

    .line 549
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateTelephonySignalStrength(I)V

    .line 550
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshSignalViews(I)V

    .line 551
    return-void

    .line 539
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", level = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", gsm level = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", cdma level = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 1934
    iput p1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    .line 1935
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 374
    return-void
.end method

.method public updateIconColorQuickly(I)V
    .locals 27
    .param p1, "flag"    # I

    .prologue
    .line 1496
    const/16 v23, -0x1

    .line 1497
    .local v23, "changedWifiIconId":I
    const/16 v22, -0x1

    .line 1498
    .local v22, "changedWifiActivityIconId":I
    const/16 v24, -0x1

    .line 1500
    .local v24, "changedWifiUnAvailableIconId":I
    const/16 v16, -0x1

    .line 1501
    .local v16, "changedVoiceSignalIconId":I
    const/4 v10, -0x1

    .line 1502
    .local v10, "changedDataSignalIconId":I
    const/16 v17, -0x1

    .line 1503
    .local v17, "changedVoiceSignalIconIdGemini":I
    const/4 v11, -0x1

    .line 1505
    .local v11, "changedDataSignalIconIdGemini":I
    const/16 v18, -0x1

    .line 1506
    .local v18, "changedVoiceTypeIconId":I
    const/16 v21, -0x1

    .line 1507
    .local v21, "changedVoiceTypeIconIdWithSimSlot":I
    const/16 v19, -0x1

    .line 1508
    .local v19, "changedVoiceTypeIconIdGemini":I
    const/16 v20, -0x1

    .line 1510
    .local v20, "changedVoiceTypeIconIdGeminiWithSimSlot":I
    const/4 v12, -0x1

    .line 1511
    .local v12, "changedDataTypeIconId":I
    const/4 v15, -0x1

    .line 1512
    .local v15, "changedDataTypeIconIdWithSimSlot":I
    const/4 v13, -0x1

    .line 1513
    .local v13, "changedDataTypeIconIdGemini":I
    const/4 v14, -0x1

    .line 1515
    .local v14, "changedDataTypeIconIdGeminiWithSimSlot":I
    const/4 v8, -0x1

    .line 1516
    .local v8, "changedDataActivityIconId":I
    const/4 v9, -0x1

    .line 1519
    .local v9, "changedDataActivityIconIdGemini":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiConnected:Z

    if-eqz v2, :cond_0

    .line 1520
    if-nez p1, :cond_2

    .line 1521
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_ACTIVITY_COLOR:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivity:I

    aget v22, v2, v3

    .line 1522
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_SIGNAL_STRENGTH_COLOR:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiLevel:I

    aget v23, v2, v3

    .line 1523
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    .line 1524
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    .line 1531
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->updateWifiIcons()V

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->updateWifiIconQuickly(II)V

    .line 1536
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailable:Z

    if-eqz v2, :cond_4

    .line 1537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mFlag:I

    if-nez v2, :cond_3

    .line 1538
    const v2, 0x7f020635

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailableIconId:I

    .line 1545
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->refreshWifiUnAvailableView()V

    .line 1551
    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1554
    .local v26, "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 1555
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v3, 0x0

    aput v18, v2, v3

    goto :goto_2

    .line 1526
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_2
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_ACTIVITY_WHITE:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivity:I

    aget v22, v2, v3

    .line 1527
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_SIGNAL_STRENGTH_WHITE:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiLevel:I

    aget v23, v2, v3

    .line 1528
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiActivityIconId:I

    .line 1529
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiIconId:I

    goto/16 :goto_0

    .line 1540
    :cond_3
    const v2, 0x7f020636

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailableIconId:I

    goto/16 :goto_1

    .line 1543
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mWifiUnAvailableIconId:I

    goto/16 :goto_1

    .line 1561
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v3, 0x0

    aput v18, v2, v3

    .line 1568
    :cond_6
    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1571
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_7

    .line 1572
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v3, 0x0

    aput v12, v2, v3

    goto :goto_3

    .line 1578
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_8
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v3, 0x0

    aput v12, v2, v3

    .line 1586
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_12

    .line 1587
    if-nez p1, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1590
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_a

    .line 1591
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v3, 0x0

    aput v21, v2, v3

    goto :goto_4

    .line 1597
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_b
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v3, 0x0

    aput v21, v2, v3

    .line 1604
    :cond_c
    if-nez p1, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1607
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_d

    .line 1608
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v3, 0x0

    aput v15, v2, v3

    goto :goto_5

    .line 1614
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_e
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v3, 0x0

    aput v15, v2, v3

    .line 1622
    :cond_f
    if-nez p1, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_10
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1625
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_10

    .line 1626
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v3, 0x0

    aput v8, v2, v3

    goto :goto_6

    .line 1632
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_11
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v3, 0x0

    aput v8, v2, v3

    .line 1641
    :cond_12
    if-nez p1, :cond_14

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1642
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1643
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_13
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1644
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_13

    .line 1645
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v3, 0x0

    aput v16, v2, v3

    goto :goto_7

    .line 1651
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_14
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v2, v0, :cond_15

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1652
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1653
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v3, 0x0

    aput v16, v2, v3

    .line 1659
    :cond_15
    if-nez p1, :cond_17

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1660
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1661
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_16
    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1662
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_16

    .line 1663
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v3, 0x0

    aput v10, v2, v3

    goto :goto_8

    .line 1669
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_17
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_18

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1670
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1671
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v3, 0x0

    aput v10, v2, v3

    .line 1676
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_19

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    if-eqz v2, :cond_19

    .line 1678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->updateMobileDataIconQuickly(IIII)V

    .line 1683
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    if-eqz v2, :cond_1a

    .line 1684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->updateMobileDataIconQuickly(IIIII)V

    .line 1692
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1694
    if-nez p1, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1697
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v3, 0x1

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_1b

    .line 1698
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v3, 0x1

    aput v19, v2, v3

    goto :goto_9

    .line 1704
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_1c
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v2, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v3, 0x1

    aput v19, v2, v3

    .line 1712
    :cond_1d
    if-nez p1, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1715
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v3, 0x1

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_1e

    .line 1716
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v3, 0x1

    aput v13, v2, v3

    goto :goto_a

    .line 1722
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_1f
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v3, 0x1

    aput v13, v2, v3

    .line 1729
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_29

    .line 1731
    if-nez p1, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_21
    :goto_b
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1734
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v3, 0x1

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_21

    .line 1735
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v3, 0x1

    aput v20, v2, v3

    goto :goto_b

    .line 1741
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_22
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v3, 0x1

    aput v20, v2, v3

    .line 1749
    :cond_23
    if-nez p1, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_24
    :goto_c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1752
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v3, 0x1

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_24

    .line 1753
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v3, 0x1

    aput v14, v2, v3

    goto :goto_c

    .line 1759
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_25
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v3, 0x1

    aput v14, v2, v3

    .line 1767
    :cond_26
    if-nez p1, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_27
    :goto_d
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1770
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v3, 0x1

    aget v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_27

    .line 1771
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v3, 0x1

    aput v9, v2, v3

    goto :goto_d

    .line 1777
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_28
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v2, v0, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->dataTypeIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v3, 0x1

    aput v9, v2, v3

    .line 1786
    :cond_29
    if-nez p1, :cond_2b

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1787
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1788
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_e
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1789
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v3, 0x1

    aget v3, v2, v3

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_2a

    .line 1790
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v3, 0x1

    aput v17, v2, v3

    goto :goto_e

    .line 1796
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_2b
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2c

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1797
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1798
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v3, 0x1

    aput v17, v2, v3

    .line 1804
    :cond_2c
    if-nez p1, :cond_2e

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1805
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1806
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_f
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1807
    .restart local v26    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v3, 0x1

    aget v3, v2, v3

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_2d

    .line 1808
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v3, 0x1

    aput v11, v2, v3

    goto :goto_f

    .line 1814
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "key":Ljava/lang/Integer;
    :cond_2e
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2f

    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1815
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1816
    sget-object v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->signalStrengthIconMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v3, 0x1

    aput v11, v2, v3

    .line 1821
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataConnected:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_30

    .line 1822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    if-eqz v2, :cond_30

    .line 1823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconIdWithSimSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconIdWithSimSlot:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataActivityIconId:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->updateMobileDataIconQuickly(IIII)V

    .line 1828
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    if-eqz v2, :cond_31

    .line 1829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataSignalIconId:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mVoiceTypeIconId:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->mDataTypeIconId:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->updateMobileDataIconQuickly(IIIII)V

    .line 1834
    :cond_31
    return-void
.end method
