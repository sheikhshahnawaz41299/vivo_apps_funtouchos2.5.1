.class public Lcom/vivo/settings/MasterClear;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/MasterClear$ClearThread;
    }
.end annotation


# static fields
.field private static final DLG_RESET_ALL_SET:I = 0x0

.field private static final KEYGUARD_REQUEST:I = 0x22b

.field private static final MSG_DISMISS_LOADING:I = 0x1

.field private static final MSG_REBOOT_WITH_BROADCAST:I = 0x2

.field private static final MSG_SHOW_LOADING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MasterClear"

.field private static final sDefComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClearSettings:Landroid/preference/Preference;

.field private mClearThread:Lcom/vivo/settings/MasterClear$ClearThread;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private progressDia:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/vivo/settings/MasterClear$4;

    invoke-direct {v0}, Lcom/vivo/settings/MasterClear$4;-><init>()V

    sput-object v0, Lcom/vivo/settings/MasterClear;->sDefComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/vivo/settings/MasterClear;->mClearSettings:Landroid/preference/Preference;

    .line 54
    iput-object v0, p0, Lcom/vivo/settings/MasterClear;->mClearThread:Lcom/vivo/settings/MasterClear$ClearThread;

    .line 62
    new-instance v0, Lcom/vivo/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/MasterClear$1;-><init>(Lcom/vivo/settings/MasterClear;)V

    iput-object v0, p0, Lcom/vivo/settings/MasterClear;->mHandler:Landroid/os/Handler;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/MasterClear;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vivo/settings/MasterClear;->showLoadingMsg()V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/MasterClear;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vivo/settings/MasterClear;->dismissLoadingMsg()V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/settings/MasterClear;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/MasterClear;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/settings/MasterClear;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/vivo/settings/MasterClear;->rebootWithBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/vivo/settings/MasterClear;->rebootWithService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/settings/MasterClear;)Lcom/vivo/settings/MasterClear$ClearThread;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/MasterClear;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/settings/MasterClear;->mClearThread:Lcom/vivo/settings/MasterClear$ClearThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/settings/MasterClear;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/MasterClear;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/settings/MasterClear;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/settings/MasterClear;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/MasterClear;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/vivo/settings/MasterClear;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/vivo/settings/MasterClear;->resetAndRebootPhone(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private dismissLoadingMsg()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vivo/settings/MasterClear;->progressDia:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/vivo/settings/MasterClear;->progressDia:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 132
    :cond_0
    return-void
.end method

.method private static getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 378
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private static rebootWithBroadcast(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 354
    const-string v1, "MasterClear"

    const-string v2, "reboot with broadcast"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "nowait"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v1, "interval"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string v1, "window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    return-void
.end method

.method private static rebootWithService(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 364
    .local v6, "pm":Landroid/os/PowerManager;
    new-instance v1, Lcom/vivo/settings/MasterClear$5;

    invoke-direct {v1, v6}, Lcom/vivo/settings/MasterClear$5;-><init>(Landroid/os/PowerManager;)V

    .line 372
    .local v1, "timerTask":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 373
    .local v0, "timer":Ljava/util/Timer;
    const-string v2, "MasterClear"

    const-string v3, "schedul start"

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 375
    return-void
.end method

.method private static resetAndRebootPhone(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    if-nez p0, :cond_0

    .line 235
    const-string v4, "MasterClear"

    const-string v5, "context is null return"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v4, 0x0

    .line 303
    :goto_0
    return v4

    .line 269
    :cond_0
    :try_start_0
    const-string v4, "MasterClear"

    const-string v5, "WallpaperManager.getInstance(context).clear() to set wallpaper to default"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_1
    invoke-static {}, Lcom/android/settings/AppFeature;->needClearNetworkLock()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    :try_start_1
    invoke-static {}, Lcom/vivo/settings/SocketClient;->clearNetworkLock()Z

    .line 279
    invoke-static {}, Lcom/vivo/settings/MasterClear;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 280
    .local v2, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v0, 0x0

    .line 281
    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "MasterClear"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetAndRebootPhone iTelephony:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-eqz v2, :cond_1

    .line 283
    new-instance v3, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    const-string v4, "API_TAG_clearPhoneData"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/VivoTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 284
    .local v3, "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_1
    :goto_2
    :try_start_2
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/etc/restore_all_settings.sh/mode=reset_settings"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 303
    :goto_3
    const/4 v4, 0x1

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MasterClear"

    const-string v5, "set default wallpaper failed"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 287
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "MasterClear"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set nv failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 294
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 295
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "MasterClear"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mClearSettings error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static rmFiles1(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "rmFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 308
    .local v5, "runtime":Ljava/lang/Runtime;
    const-string v7, "vivo_daemon.service"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/daemon/VivoDmServiceProxy;

    move-result-object v6

    .line 309
    .local v6, "vivoDm":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    .local v1, "fileStr":Ljava/lang/String;
    :try_start_0
    const-string v7, "MasterClear"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exec "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v7, "MasterClear"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check before : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod -R 777 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rm -rf "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod -R 777 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShell(Ljava/lang/String;)I

    move-result v3

    .line 316
    .local v3, "result1":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rm -rf "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShell(Ljava/lang/String;)I

    move-result v4

    .line 317
    .local v4, "result2":I
    const-string v7, "MasterClear"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check after : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 318
    .end local v3    # "result1":I
    .end local v4    # "result2":I
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "MasterClear"

    const-string v8, "io error "

    invoke-static {v7, v8, v0}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "MasterClear"

    const-string v8, "remote error "

    invoke-static {v7, v8, v0}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "fileStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 167
    iget-object v1, p0, Lcom/vivo/settings/MasterClear;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/vivo/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b02e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b02e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showLoadingMsg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/MasterClear;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 119
    .local v0, "mStatusBar":Landroid/app/StatusBarManager;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/vivo/settings/MasterClear;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/settings/MasterClear;->progressDia:Landroid/app/ProgressDialog;

    .line 120
    iget-object v1, p0, Lcom/vivo/settings/MasterClear;->progressDia:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 121
    iget-object v1, p0, Lcom/vivo/settings/MasterClear;->progressDia:Landroid/app/ProgressDialog;

    const v2, 0x7f0b07d6

    invoke-virtual {p0, v2}, Lcom/vivo/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/vivo/settings/MasterClear;->progressDia:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 123
    iget-object v1, p0, Lcom/vivo/settings/MasterClear;->progressDia:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 124
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 125
    iget-object v1, p0, Lcom/vivo/settings/MasterClear;->progressDia:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 126
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 176
    const/16 v0, 0x22b

    if-ne p1, v0, :cond_0

    .line 177
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/MasterClear;->showDialog(I)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    if-nez p2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/vivo/settings/MasterClear;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "MasterClear"

    const-string v1, "..onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/vivo/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/MasterClear;->mContext:Landroid/content/Context;

    .line 85
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/vivo/settings/MasterClear;->addPreferencesFromResource(I)V

    .line 86
    const-string v0, "clear_settings"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/MasterClear;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/MasterClear;->mClearSettings:Landroid/preference/Preference;

    .line 87
    invoke-static {}, Lcom/android/settings/AppFeature;->isFeatureForNetEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/vivo/settings/MasterClear;->mClearSettings:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/MasterClear;->removePreference(Landroid/preference/Preference;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/MasterClear;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 91
    new-instance v0, Lcom/vivo/settings/MasterClear$ClearThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/settings/MasterClear$ClearThread;-><init>(Lcom/vivo/settings/MasterClear;Lcom/vivo/settings/MasterClear$1;)V

    iput-object v0, p0, Lcom/vivo/settings/MasterClear;->mClearThread:Lcom/vivo/settings/MasterClear$ClearThread;

    .line 92
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 140
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vivo/settings/MasterClear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b08c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 142
    const v1, 0x7f0b088a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 143
    const v1, 0x7f0b08c6

    new-instance v2, Lcom/vivo/settings/MasterClear$2;

    invoke-direct {v2, p0}, Lcom/vivo/settings/MasterClear$2;-><init>(Lcom/vivo/settings/MasterClear;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const v1, 0x7f0b00cb

    new-instance v2, Lcom/vivo/settings/MasterClear$3;

    invoke-direct {v2, p0}, Lcom/vivo/settings/MasterClear$3;-><init>(Lcom/vivo/settings/MasterClear;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    .line 104
    const-string v1, "MasterClear"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick preference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/vivo/settings/MasterClear;->mClearSettings:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 106
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :goto_0
    return v0

    .line 109
    :cond_0
    const/16 v1, 0x22b

    invoke-direct {p0, v1}, Lcom/vivo/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Lcom/vivo/settings/MasterClear;->showDialog(I)V

    .line 112
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/vivo/settings/MasterClear;->showBBKBackButton()V

    .line 98
    const v0, 0x7f0b02dd

    invoke-virtual {p0, v0}, Lcom/vivo/settings/MasterClear;->setTitle(I)V

    .line 99
    return-void
.end method
