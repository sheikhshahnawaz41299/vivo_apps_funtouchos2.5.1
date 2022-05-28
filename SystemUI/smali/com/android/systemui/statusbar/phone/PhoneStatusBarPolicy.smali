.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"


# static fields
.field private static final DEBUG:Z

.field private static final SHOW_SYNC_ICON:Z = false

.field private static final SLOT_ALARM_CLOCK:Ljava/lang/String; = "alarm_clock"

.field private static final SLOT_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field private static final SLOT_CAMERA_GESTURE:Ljava/lang/String; = "cameragesture"

.field private static final SLOT_CAST:Ljava/lang/String; = "cast"

.field private static final SLOT_CDMA_ERI:Ljava/lang/String; = "cdma_eri"

.field private static final SLOT_FACE_DETECTION:Ljava/lang/String; = "face_detection"

.field private static final SLOT_GPS:Ljava/lang/String; = "gps"

.field private static final SLOT_HEADSET:Ljava/lang/String; = "headset"

.field private static final SLOT_HIFI:Ljava/lang/String; = "hifi"

.field private static final SLOT_HOTSPOT:Ljava/lang/String; = "hotspot"

.field private static final SLOT_NFC:Ljava/lang/String; = "nfc"

.field private static final SLOT_PS:Ljava/lang/String; = "power_saving"

.field private static final SLOT_SMART_PAUSE:Ljava/lang/String; = "smart_pause"

.field private static final SLOT_SPS:Ljava/lang/String; = "super_power_saving"

.field private static final SLOT_SYNC_ACTIVE:Ljava/lang/String; = "sync_active"

.field private static final SLOT_TTY:Ljava/lang/String; = "tty"

.field private static final SLOT_VOLUME:Ljava/lang/String; = "volume"

.field private static final SLOT_ZEN:Ljava/lang/String; = "zen"

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarPolicy"


# instance fields
.field private final BT_HEADSET_PW_COLOR:[I

.field private final BT_HEADSET_PW_WHITE:[I

.field private mAlarmEnabled:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothIconId:I

.field private mBtHeadsetPw:I

.field private mCameraGestureOn:Z

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

.field private final mContext:Landroid/content/Context;

.field private mGpsAction:Ljava/lang/String;

.field private mGpsEnabled:Z

.field private mGpsIconVisible:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHeadSetEnabled:Z

.field private mHeadSetIconId:I

.field private mHifiEnabled:Z

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field private mIconColorFlag:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNfcEnabled:Z

.field private mPsEnabled:Z

.field private final mService:Landroid/app/StatusBarManager;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSmartPauseEnabled:Z

.field private mSpsEnabled:Z

.field private mVolumeVisible:Z

.field private mZen:I

.field private mZenVisible:Z

.field private mic_no_flag:I

.field private mic_with_flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "PhoneStatusBarPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;
    .param p3, "hotspot"    # Lcom/android/systemui/statusbar/policy/HotspotController;

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 89
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 96
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 98
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSmartPauseEnabled:Z

    .line 99
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    .line 100
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSpsEnabled:Z

    .line 101
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPsEnabled:Z

    .line 102
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHifiEnabled:Z

    .line 103
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmEnabled:Z

    .line 104
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCameraGestureOn:Z

    .line 105
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetEnabled:Z

    .line 106
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsEnabled:Z

    .line 107
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsIconVisible:Z

    .line 109
    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsAction:Ljava/lang/String;

    .line 111
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    .line 112
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    .line 113
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    .line 116
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 117
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    .line 121
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->BT_HEADSET_PW_COLOR:[I

    .line 127
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->BT_HEADSET_PW_WHITE:[I

    .line 133
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBtHeadsetPw:I

    .line 136
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 534
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 541
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 219
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 221
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 222
    const-string v2, "statusbar"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 225
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v2, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v2, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isTelecomTestVersion()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    :cond_0
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    :cond_1
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v2, "com.bbk.audiofx.hifi.display"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v2, "com.android.action.FACE__DETECTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v2, "com.android.action.FACE__DETECTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v2, "android.vivo.cameragesture.action.GESTURE_ON_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v2, "action.android.smartpausevideo.notification"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v2, "com.bbk.psas.psm.change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v2, "bluetooth.headset.power"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v1, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 265
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "tty"

    const v6, 0x7f020148

    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "tty"

    invoke-virtual {v2, v5, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 269
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "cdma_eri"

    const v6, 0x7f02013b

    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "cdma_eri"

    invoke-virtual {v2, v5, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 279
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    if-nez v2, :cond_3

    .line 280
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "alarm_clock"

    const v6, 0x7f020163

    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v5, "alarmstate"

    invoke-static {v2, v5, v4}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmEnabled:Z

    .line 285
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "alarm_clock"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmEnabled:Z

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 289
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "sync_active"

    const v5, 0x7f020147

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "sync_active"

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 294
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "zen"

    const v5, 0x7f020155

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "zen"

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 300
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    const v5, 0x7f020549

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 303
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume(I)V

    .line 321
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "headset"

    const v5, 0x7f020237

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "headset"

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 324
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSpsIcon(I)V

    .line 327
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePSIcon(I)V

    .line 331
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 332
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    .line 336
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateNFCIcon(I)V

    .line 339
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHifiIcon(I)V

    .line 342
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSmartPauseIcon(I)V

    .line 345
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCameraGestureIcon(I)V

    .line 347
    return-void

    .line 282
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "alarm_clock"

    const v6, 0x7f020164

    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 284
    goto/16 :goto_1

    .line 121
    nop

    :array_0
    .array-data 4
        0x7f0201c1
        0x7f0201c3
        0x7f0201c5
        0x7f0201c7
        0x7f0201c9
        0x7f0201cb
        0x7f0201cd
        0x7f0201cf
        0x7f0201d1
        0x7f0201d3
    .end array-data

    .line 127
    :array_1
    .array-data 4
        0x7f0201c2
        0x7f0201c4
        0x7f0201c6
        0x7f0201c8
        0x7f0201ca
        0x7f0201cc
        0x7f0201ce
        0x7f0201d0
        0x7f0201d2
        0x7f0201d4
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadSet(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateFaceDetection(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCameraGesture(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateNFC(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSmartPause(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateGPS(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBtHeadsetPw:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBtHeadsetPw:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->BT_HEADSET_PW_COLOR:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->BT_HEADSET_PW_WHITE:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetoothHeadsetPowerIcon(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAlarm()V
    .locals 4

    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 359
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 360
    .local v1, "alarmSet":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "alarm_clock"

    invoke-virtual {v2, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 361
    return-void

    .line 359
    .end local v1    # "alarmSet":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAlarm(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 626
    const-string v0, "alarmSet"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmEnabled:Z

    .line 627
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarmIcon(I)V

    .line 628
    return-void
.end method

.method private updateAlarmIcon(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    .line 890
    if-nez p1, :cond_1

    .line 891
    const v0, 0x7f020163

    .line 895
    .local v0, "iconId":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmEnabled:Z

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 899
    return-void

    .line 893
    .end local v0    # "iconId":I
    :cond_1
    const v0, 0x7f020164

    .restart local v0    # "iconId":I
    goto :goto_0
.end method

.method private final updateBluetooth()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 444
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 447
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v2, 0x0

    .line 448
    .local v2, "iconId":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    if-nez v3, :cond_1

    .line 449
    const v2, 0x7f0201bd

    .line 454
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0055

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "contentDescription":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 457
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v5, 0xc

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 458
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 461
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    if-nez v3, :cond_3

    .line 462
    const v2, 0x7f0201be

    .line 467
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0054

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    :cond_0
    :goto_3
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    .line 476
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 477
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v3, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 478
    return-void

    .line 451
    .end local v1    # "contentDescription":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0201c0

    goto :goto_0

    .restart local v1    # "contentDescription":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 457
    goto :goto_1

    .line 464
    :cond_3
    const v2, 0x7f0201bf

    goto :goto_2

    .line 470
    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    goto :goto_3
.end method

.method private updateBluetoothHeadsetPowerIcon(I)V
    .locals 5
    .param p1, "iconId"    # I

    .prologue
    const/4 v3, 0x0

    .line 482
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    .line 483
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 484
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0055

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "contentDescription":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 488
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0054

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 492
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    invoke-virtual {v2, v4, p1, v3, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 493
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "bluetooth"

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 494
    return-void

    :cond_0
    move v2, v3

    .line 487
    goto :goto_0

    .line 490
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    goto :goto_1
.end method

.method private updateBluetoothIcon(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    const v2, 0x7f0201bf

    const v1, 0x7f0201be

    const v4, 0x7f0201c0

    const v3, 0x7f0201bd

    .line 853
    if-nez p1, :cond_5

    .line 854
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    if-ne v0, v4, :cond_2

    .line 855
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    .line 882
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 886
    return-void

    .line 856
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    if-ne v0, v2, :cond_3

    .line 857
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    goto :goto_0

    .line 860
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->BT_HEADSET_PW_WHITE:[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBtHeadsetPw:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_4

    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->BT_HEADSET_PW_COLOR:[I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBtHeadsetPw:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    goto :goto_0

    .line 864
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    if-nez v0, :cond_0

    .line 865
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    goto :goto_0

    .line 868
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    if-ne v0, v3, :cond_6

    .line 869
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    goto :goto_0

    .line 870
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    if-ne v0, v1, :cond_7

    .line 871
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    goto :goto_0

    .line 874
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->BT_HEADSET_PW_COLOR:[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBtHeadsetPw:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_8

    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->BT_HEADSET_PW_WHITE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBtHeadsetPw:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    goto :goto_0

    .line 878
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    if-nez v0, :cond_0

    .line 879
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    goto :goto_0
.end method

.method private updateCameraGesture(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 636
    const-string v0, "onoff"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCameraGestureOn:Z

    .line 637
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCameraGestureIcon(I)V

    .line 638
    return-void
.end method

.method private updateCameraGestureIcon(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    .line 773
    if-nez p1, :cond_1

    .line 774
    const v0, 0x7f0201d5

    .line 778
    .local v0, "iconId":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCameraGestureOn:Z

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cameragesture"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cameragesture"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCameraGestureOn:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 782
    return-void

    .line 776
    .end local v0    # "iconId":I
    :cond_1
    const v0, 0x7f0201d6

    .restart local v0    # "iconId":I
    goto :goto_0
.end method

.method private updateCast()V
    .locals 9

    .prologue
    .line 518
    const/4 v2, 0x0

    .line 519
    .local v2, "isCasting":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 520
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 522
    :cond_1
    const/4 v2, 0x1

    .line 526
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "PhoneStatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCast: isCasting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_3
    if-eqz v2, :cond_4

    .line 528
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cast"

    const v5, 0x7f02012c

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0094

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 531
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cast"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 532
    return-void
.end method

.method private final updateFaceDetection(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 666
    const-string v3, "show"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 667
    .local v2, "show":Z
    const-string v3, "has_face"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 668
    .local v1, "hasFaces":Z
    const-string v3, "begin"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 670
    .local v0, "begin":Z
    if-nez v2, :cond_1

    .line 671
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "face_detection"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    if-eqz v0, :cond_3

    .line 676
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    if-nez v3, :cond_2

    .line 677
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "face_detection"

    const v5, 0x7f020227

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 695
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "face_detection"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 696
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 697
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 679
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "face_detection"

    const v5, 0x7f020228

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    .line 681
    :cond_3
    if-eqz v1, :cond_5

    .line 682
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    if-nez v3, :cond_4

    .line 683
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "face_detection"

    const v5, 0x7f020229

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    .line 685
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "face_detection"

    const v5, 0x7f02022a

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    .line 688
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    if-nez v3, :cond_6

    .line 689
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "face_detection"

    const v5, 0x7f02022b

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    .line 691
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "face_detection"

    const v5, 0x7f02022c

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1
.end method

.method private updateGPS(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 603
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsAction:Ljava/lang/String;

    .line 604
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsEnabled:Z

    .line 606
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsAction:Ljava/lang/String;

    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 609
    .local v0, "on":Z
    if-nez v0, :cond_0

    .line 610
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsIconVisible:Z

    .line 622
    .end local v0    # "on":Z
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateGPSIcon(I)V

    .line 623
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsAction:Ljava/lang/String;

    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsEnabled:Z

    if-eqz v1, :cond_2

    .line 614
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsIconVisible:Z

    goto :goto_0

    .line 615
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsAction:Ljava/lang/String;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsEnabled:Z

    if-nez v1, :cond_3

    .line 617
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsIconVisible:Z

    goto :goto_0

    .line 620
    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsIconVisible:Z

    goto :goto_0
.end method

.method private final updateHeadSet(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 551
    const-string v2, "state"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 552
    .local v1, "state":I
    const-string v2, "microphone"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 553
    .local v0, "mic":I
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateHeadSet, state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mic="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    if-eq v1, v7, :cond_1

    if-ne v0, v7, :cond_2

    .line 600
    :cond_1
    :goto_0
    return-void

    .line 558
    :cond_2
    if-ne v1, v5, :cond_6

    .line 559
    if-ne v0, v5, :cond_4

    .line 560
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 563
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    if-nez v2, :cond_3

    .line 564
    const v2, 0x7f020237

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    .line 568
    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetEnabled:Z

    .line 569
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "headset"

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    invoke-virtual {v2, v3, v4, v6, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "headset"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 566
    :cond_3
    const v2, 0x7f020238

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    goto :goto_1

    .line 573
    :cond_4
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    .line 576
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    if-nez v2, :cond_5

    .line 577
    const v2, 0x7f020239

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    .line 581
    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetEnabled:Z

    .line 582
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "headset"

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    invoke-virtual {v2, v3, v4, v6, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 584
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "headset"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 579
    :cond_5
    const v2, 0x7f02023a

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    goto :goto_2

    .line 588
    :cond_6
    if-nez v0, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    if-ne v5, v2, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    if-ne v5, v2, :cond_7

    .line 589
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 590
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    goto :goto_0

    .line 593
    :cond_7
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetEnabled:Z

    .line 595
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "headset"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 596
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 597
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    goto :goto_0
.end method

.method private updateHeadSetIcon(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    const v4, 0x7f02023a

    const v3, 0x7f020239

    const v2, 0x7f020238

    const v1, 0x7f020237

    .line 748
    if-nez p1, :cond_4

    .line 749
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    if-ne v0, v2, :cond_2

    .line 750
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    .line 765
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetEnabled:Z

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 769
    return-void

    .line 751
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    if-ne v0, v4, :cond_3

    .line 752
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    goto :goto_0

    .line 753
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    if-nez v0, :cond_0

    .line 754
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    goto :goto_0

    .line 757
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    if-ne v0, v1, :cond_5

    .line 758
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    goto :goto_0

    .line 759
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    if-ne v0, v3, :cond_6

    .line 760
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    goto :goto_0

    .line 761
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    if-nez v0, :cond_0

    .line 762
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadSetIconId:I

    goto :goto_0
.end method

.method private updateHifi(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 641
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHifiEnabled:Z

    .line 642
    const-string v0, "PhoneStatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHifi, mHifiEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHifiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHifiIcon(I)V

    .line 644
    return-void
.end method

.method private updateHifiIcon(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    .line 786
    if-nez p1, :cond_1

    .line 787
    const v0, 0x7f02023b

    .line 791
    .local v0, "iconId":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHifiEnabled:Z

    if-eqz v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "hifi"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "hifi"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHifiEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 795
    return-void

    .line 789
    .end local v0    # "iconId":I
    :cond_1
    const v0, 0x7f02023c

    .restart local v0    # "iconId":I
    goto :goto_0
.end method

.method private updateNFC(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 656
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 657
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 658
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    .line 662
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateNFCIcon(I)V

    .line 663
    return-void

    .line 660
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    goto :goto_0
.end method

.method private updateNFCIcon(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    .line 812
    if-nez p1, :cond_1

    .line 813
    const v0, 0x7f020321

    .line 817
    .local v0, "iconId":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "nfc"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "nfc"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 821
    return-void

    .line 815
    .end local v0    # "iconId":I
    :cond_1
    const v0, 0x7f020322

    .restart local v0    # "iconId":I
    goto :goto_0
.end method

.method private updatePSIcon(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    const/4 v2, 0x0

    .line 903
    if-nez p1, :cond_2

    .line 904
    const v0, 0x7f0204f5

    .line 908
    .local v0, "iconId":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "bbk_power_assistant"

    invoke-static {v1, v3, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Secure;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPsEnabled:Z

    .line 909
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPsEnabled:Z

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "power_saving"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 912
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSpsEnabled:Z

    if-eqz v1, :cond_1

    .line 913
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPsEnabled:Z

    .line 915
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "power_saving"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPsEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 916
    return-void

    .line 906
    .end local v0    # "iconId":I
    :cond_2
    const v0, 0x7f0204f6

    .restart local v0    # "iconId":I
    goto :goto_0

    :cond_3
    move v1, v2

    .line 908
    goto :goto_1
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 370
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 396
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 377
    :cond_1
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 380
    :cond_2
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 381
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 386
    :cond_3
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 387
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 391
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/FtIccCardConstants;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 394
    .end local v0    # "lockedReason":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private updateSmartPause(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 631
    const-string v0, "notificationstate"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSmartPauseEnabled:Z

    .line 632
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSmartPauseIcon(I)V

    .line 633
    return-void
.end method

.method private updateSmartPauseIcon(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    .line 799
    if-nez p1, :cond_1

    .line 800
    const v0, 0x7f0205a8

    .line 804
    .local v0, "iconId":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSmartPauseEnabled:Z

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "smart_pause"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "smart_pause"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSmartPauseEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 808
    return-void

    .line 802
    .end local v0    # "iconId":I
    :cond_1
    const v0, 0x7f0205a9

    .restart local v0    # "iconId":I
    goto :goto_0
.end method

.method private updateSpsIcon(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    .line 920
    if-nez p1, :cond_1

    .line 921
    const v0, 0x7f0205c0

    .line 925
    .local v0, "iconId":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSpsEnabled:Z

    if-eqz v1, :cond_0

    .line 926
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "super_power_saving"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "super_power_saving"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSpsEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 929
    return-void

    .line 923
    .end local v0    # "iconId":I
    :cond_1
    const v0, 0x7f0205c1

    .restart local v0    # "iconId":I
    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 364
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 498
    const-string v4, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 500
    .local v0, "currentTtyMode":I
    if-eqz v0, :cond_2

    move v1, v2

    .line 502
    .local v1, "enabled":Z
    :goto_0
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTTY: enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    if-eqz v1, :cond_3

    .line 506
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PhoneStatusBarPolicy"

    const-string v5, "updateTTY: set TTY on"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "tty"

    const v6, 0x7f020148

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0091

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 509
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 515
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_2
    move v1, v3

    .line 500
    goto :goto_0

    .line 512
    .restart local v1    # "enabled":Z
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "PhoneStatusBarPolicy"

    const-string v4, "updateTTY: set TTY off"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    invoke-virtual {v2, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private final updateVolume(I)V
    .locals 8
    .param p1, "flag"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 824
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 825
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 826
    .local v2, "ringerMode":I
    if-eqz v2, :cond_0

    if-ne v2, v5, :cond_3

    :cond_0
    move v3, v5

    .line 830
    .local v3, "visible":Z
    :goto_0
    if-ne v2, v5, :cond_5

    .line 831
    if-nez p1, :cond_4

    .line 832
    const v1, 0x7f020549

    .line 843
    .local v1, "iconId":I
    :goto_1
    if-eqz v3, :cond_1

    .line 844
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "volume"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 846
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v4, :cond_2

    .line 847
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "volume"

    invoke-virtual {v4, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 848
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 850
    :cond_2
    return-void

    .end local v1    # "iconId":I
    .end local v3    # "visible":Z
    :cond_3
    move v3, v4

    .line 826
    goto :goto_0

    .line 834
    .restart local v3    # "visible":Z
    :cond_4
    const v1, 0x7f02054a

    .restart local v1    # "iconId":I
    goto :goto_1

    .line 837
    .end local v1    # "iconId":I
    :cond_5
    if-nez p1, :cond_6

    .line 838
    const v1, 0x7f020547

    .restart local v1    # "iconId":I
    goto :goto_1

    .line 840
    .end local v1    # "iconId":I
    :cond_6
    const v1, 0x7f020548

    .restart local v1    # "iconId":I
    goto :goto_1
.end method

.method private final updateVolumeZen()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 399
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 401
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v6, 0x0

    .line 402
    .local v6, "zenVisible":Z
    const/4 v5, 0x0

    .line 403
    .local v5, "zenIconId":I
    const/4 v4, 0x0

    .line 405
    .local v4, "zenDescription":Ljava/lang/String;
    const/4 v3, 0x0

    .line 406
    .local v3, "volumeVisible":Z
    const/4 v2, 0x0

    .line 407
    .local v2, "volumeIconId":I
    const/4 v1, 0x0

    .line 409
    .local v1, "volumeDescription":Ljava/lang/String;
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    if-ne v7, v11, :cond_6

    .line 410
    const/4 v6, 0x1

    .line 411
    const v5, 0x7f020156

    .line 412
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0e011b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 419
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    if-eq v7, v11, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 421
    const/4 v3, 0x1

    .line 422
    const v2, 0x7f02013a

    .line 423
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0092

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    :cond_1
    if-eqz v6, :cond_2

    .line 427
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "zen"

    invoke-virtual {v7, v8, v5, v9, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 429
    :cond_2
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    if-eq v6, v7, :cond_3

    .line 430
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "zen"

    invoke-virtual {v7, v8, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 431
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    .line 434
    :cond_3
    if-eqz v3, :cond_4

    .line 435
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "volume"

    invoke-virtual {v7, v8, v2, v9, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 437
    :cond_4
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v7, :cond_5

    .line 438
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "volume"

    invoke-virtual {v7, v8, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 439
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 441
    :cond_5
    return-void

    .line 413
    :cond_6
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    if-ne v7, v10, :cond_0

    .line 414
    const/4 v6, 0x1

    .line 415
    const v5, 0x7f020155

    .line 416
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0e011c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateZen()V
    .locals 6

    .prologue
    .line 932
    const/4 v2, 0x0

    .line 933
    .local v2, "zenVisible":Z
    const/4 v1, 0x0

    .line 934
    .local v1, "zenIconId":I
    const/4 v0, 0x0

    .line 935
    .local v0, "zenDescription":Ljava/lang/String;
    const-string v3, "zen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mZen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 939
    :cond_0
    const/4 v2, 0x1

    .line 940
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    if-nez v3, :cond_4

    .line 941
    const v1, 0x7f020637

    .line 945
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v4, 0x7f0e011c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 947
    :cond_1
    if-eqz v2, :cond_2

    .line 948
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "zen"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 950
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    if-eq v2, v3, :cond_3

    .line 951
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "zen"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 952
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    .line 954
    :cond_3
    return-void

    .line 943
    :cond_4
    const v1, 0x7f020638

    goto :goto_0
.end method


# virtual methods
.method public setZenMode(I)V
    .locals 0
    .param p1, "zen"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateZen()V

    .line 355
    return-void
.end method

.method public updateGPSIcon(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    .line 728
    if-nez p1, :cond_2

    .line 729
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsAction:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "android.location.GPS_FIX_CHANGE"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsEnabled:Z

    if-eqz v1, :cond_1

    .line 730
    const v0, 0x7f020231

    .line 741
    .local v0, "iconId":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsIconVisible:Z

    if-eqz v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "gps"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "gps"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsIconVisible:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 745
    return-void

    .line 732
    .end local v0    # "iconId":I
    :cond_1
    const v0, 0x7f02022d

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 735
    .end local v0    # "iconId":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsAction:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "android.location.GPS_FIX_CHANGE"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mGpsEnabled:Z

    if-eqz v1, :cond_3

    .line 736
    const v0, 0x7f020232

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 738
    .end local v0    # "iconId":I
    :cond_3
    const v0, 0x7f02022e

    .restart local v0    # "iconId":I
    goto :goto_0
.end method

.method public updateIconStyle(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 707
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    if-ne v0, p1, :cond_0

    .line 724
    :goto_0
    return-void

    .line 710
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    .line 712
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarmIcon(I)V

    .line 713
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume(I)V

    .line 714
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetoothIcon(I)V

    .line 715
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePSIcon(I)V

    .line 716
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSpsIcon(I)V

    .line 717
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHifiIcon(I)V

    .line 718
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCameraGestureIcon(I)V

    .line 719
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadSetIcon(I)V

    .line 720
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateNFCIcon(I)V

    .line 721
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSmartPauseIcon(I)V

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateGPSIcon(I)V

    .line 723
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateZen()V

    goto :goto_0
.end method

.method public updatePs()V
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePSIcon(I)V

    .line 648
    return-void
.end method

.method public updateSps(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 651
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSpsEnabled:Z

    .line 652
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconColorFlag:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSpsIcon(I)V

    .line 653
    return-void
.end method
