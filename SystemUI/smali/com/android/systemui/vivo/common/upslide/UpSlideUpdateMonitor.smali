.class public Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;
.super Ljava/lang/Object;
.source "UpSlideUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0x3e9

.field private static final MSG_SUPER_POWER_SAVING_SETTINGS_CHANGED:I = 0x3ea

.field private static final MSG_VISIT_MODE_SETTINGS_CHANGED:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "UpSlideUpdateMonitor"

.field private static final VISIT_MODE_DELAY_TIME:I = 0x64


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDoubleInstanceListener:Landroid/content/ISmartShowContext$OnOpsChangedListener;

.field private mHandler:Landroid/os/Handler;

.field private mStateCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

.field mVisitModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mStateCallbackList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$1;-><init>(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$2;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$2;-><init>(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mVisitModeObserver:Landroid/database/ContentObserver;

    .line 71
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;-><init>(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 306
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$4;-><init>(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mDoubleInstanceListener:Landroid/content/ISmartShowContext$OnOpsChangedListener;

    .line 165
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mContext:Landroid/content/Context;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->handleCloseSystemDialogs(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->handleSuperPower(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->handleVisitModeChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mStateCallbackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->handleThemeChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Lcom/android/systemui/vivo/common/upslide/UpSlideManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->onPhoneClearFinished()V

    return-void
.end method

.method private handleCloseSystemDialogs(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->handleCloseSystemDialogs(Landroid/content/Intent;)V

    .line 247
    :cond_0
    return-void
.end method

.method private handleSuperPower(Z)V
    .locals 1
    .param p1, "isSpsOn"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->handleSuperPower(Z)V

    .line 253
    :cond_0
    return-void
.end method

.method private handleThemeChanged()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->handleThemeChanged()V

    .line 259
    :cond_0
    return-void
.end method

.method private handleVisitModeChanged(Z)V
    .locals 1
    .param p1, "isVisitModeOn"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->handleVisitModeChanged(Z)V

    .line 265
    :cond_0
    return-void
.end method

.method private onPhoneClearFinished()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->onPhoneClearFinished()V

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "intent.action.theme.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v2, "android.intent.action.FONT_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v2, "com.android.settings.font_size_changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v2, "intent.action.super_power_save_send"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v2, "intent.action.PHONE_CLEAN_FINISH"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v2, "com.iqoo.secure.OPTIMIZE_COMPLETE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v2, "vivo.intent.action.ENABLE_IN_APP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v1, "pkgFilter":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 190
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mVisitModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 199
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mDoubleInstanceListener:Landroid/content/ISmartShowContext$OnOpsChangedListener;

    invoke-interface {v2, v3}, Landroid/content/ISmartShowContext;->startWatchingConfig(Landroid/content/ISmartShowContext$OnOpsChangedListener;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v2, "UpSlideUpdateMonitor"

    const-string v3, "SmartShowContext.startWatchingConfig failed!!!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallBack(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;)V
    .locals 2
    .param p1, "callBack"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mStateCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "UpSlideUpdateMonitor"

    const-string v1, "StateCallback has register,maybe error occurs"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mStateCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setUpSlideManager(Lcom/android/systemui/vivo/common/upslide/UpSlideManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    .line 213
    return-void
.end method

.method public unInit()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mStateCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mDoubleInstanceListener:Landroid/content/ISmartShowContext$OnOpsChangedListener;

    invoke-interface {v0, v1}, Landroid/content/ISmartShowContext;->stopWatchingConfig(Landroid/content/ISmartShowContext$OnOpsChangedListener;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v0, "UpSlideUpdateMonitor"

    const-string v1, "SmartShowContext stopWatchingConfig failed!!!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterCallBack(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;)V
    .locals 2
    .param p1, "callBack"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mStateCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "UpSlideUpdateMonitor"

    const-string v1, "StateCallback has register,maybe error occurs"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->mStateCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v0, "UpSlideUpdateMonitor"

    const-string v1, "StateCallback has unRegister,maybe error occurs"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
