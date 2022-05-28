.class public Lcom/android/systemui/power/PowerWarningsManager;
.super Ljava/lang/Object;
.source "PowerWarningsManager.java"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerWarningsManager$Receiver;
    }
.end annotation


# static fields
.field private static final ID_NOTIFICATION:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "PowerWarningsManager"

.field private static sInstance:Lcom/android/systemui/power/PowerWarningsManager;


# instance fields
.field private mBatteryLevel:I

.field private mBucket:I

.field private final mContext:Landroid/content/Context;

.field private mHallLock:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHifiEnable:Z

.field private mInvalidCharger:Z

.field private mInvalidChargerDialog:Landroid/app/AlertDialog;

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private final mNotiManager:Landroid/app/NotificationManager;

.field private final mReceiver:Lcom/android/systemui/power/PowerWarningsManager$Receiver;

.field private mScreenOffTime:J

.field private mShowLowPowerWhenUnlock:Z

.field private mSpsOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/power/PowerWarningsManager;->sInstance:Lcom/android/systemui/power/PowerWarningsManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerWarningsManager$Receiver;-><init>(Lcom/android/systemui/power/PowerWarningsManager;Lcom/android/systemui/power/PowerWarningsManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mReceiver:Lcom/android/systemui/power/PowerWarningsManager$Receiver;

    .line 56
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mInvalidCharger:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mSpsOn:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mHallLock:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mHifiEnable:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mShowLowPowerWhenUnlock:Z

    .line 72
    iput-object p1, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    .line 73
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mNotiManager:Landroid/app/NotificationManager;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mReceiver:Lcom/android/systemui/power/PowerWarningsManager$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->init()V

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerWarningsManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerWarningsManager;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/power/PowerWarningsManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/power/PowerWarningsManager;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/power/PowerWarningsManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/power/PowerWarningsManager;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerWarningsManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/PowerWarningsManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerWarningsManager;->mHifiEnable:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/power/PowerWarningsManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerWarningsManager;->mSpsOn:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/power/PowerWarningsManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerWarningsManager;->mHallLock:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerWarningsManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mShowLowPowerWhenUnlock:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/power/PowerWarningsManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerWarningsManager;->mShowLowPowerWhenUnlock:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/power/PowerWarningsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/android/systemui/power/PowerWarningsManager;->sInstance:Lcom/android/systemui/power/PowerWarningsManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/systemui/power/PowerWarningsManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerWarningsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/power/PowerWarningsManager;->sInstance:Lcom/android/systemui/power/PowerWarningsManager;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/systemui/power/PowerWarningsManager;->sInstance:Lcom/android/systemui/power/PowerWarningsManager;

    return-object v0
.end method

.method private isAlarmBoot()Z
    .locals 3

    .prologue
    .line 168
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 171
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 169
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showLowBatteryWarningDialog()V
    .locals 11

    .prologue
    const v10, 0x7f0e01ef

    const v9, 0x7f0e01e6

    .line 207
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isShowLowBatteryWarning()Z

    move-result v7

    if-nez v7, :cond_0

    .line 307
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/power/PowerWarningsManager;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/power/PowerWarningsManager;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerWarningsManager;->dismissLowBatteryWarning()V

    .line 218
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    const v8, 0x30f0004

    invoke-direct {v3, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 219
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 220
    const v7, 0x7f0e01ea

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 221
    iget-boolean v7, p0, Lcom/android/systemui/power/PowerWarningsManager;->mSpsOn:Z

    if-eqz v7, :cond_2

    .line 222
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 223
    const/4 v7, 0x0

    invoke-virtual {v3, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    :goto_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 273
    .local v2, "alertDialog":Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/systemui/power/PowerWarningsManager$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/power/PowerWarningsManager$4;-><init>(Lcom/android/systemui/power/PowerWarningsManager;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 280
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 281
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 282
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 283
    iput-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mLowBatteryDialog:Landroid/app/AlertDialog;

    .line 285
    new-instance v5, Lcom/android/systemui/power/PowerWarningsManager$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerWarningsManager$5;-><init>(Lcom/android/systemui/power/PowerWarningsManager;)V

    .line 299
    .local v5, "task":Ljava/lang/Runnable;
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 301
    .local v6, "timer":Ljava/util/Timer;
    :try_start_0
    move-object v0, v5

    check-cast v0, Ljava/util/TimerTask;

    move-object v7, v0

    const-wide/32 v8, 0x15f90

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v4

    .line 303
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "PowerWarningsManager"

    const-string v8, "showLowBatteryWarningDialog >>> internal error!"

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    iget-object v7, p0, Lcom/android/systemui/power/PowerWarningsManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 225
    .end local v2    # "alertDialog":Landroid/app/AlertDialog;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "task":Ljava/lang/Runnable;
    .end local v6    # "timer":Ljava/util/Timer;
    :cond_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isHifiAlwaysOn()Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/power/PowerWarningsManager;->mHifiEnable:Z

    if-eqz v7, :cond_4

    .line 226
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 227
    const v7, 0x7f0e01ed

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 239
    :goto_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 240
    new-instance v7, Lcom/android/systemui/power/PowerWarningsManager$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/power/PowerWarningsManager$1;-><init>(Lcom/android/systemui/power/PowerWarningsManager;)V

    invoke-virtual {v3, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 229
    :cond_3
    const v7, 0x7f0e01ec

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 232
    :cond_4
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 233
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 235
    :cond_5
    const v7, 0x7f0e01eb

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 246
    :cond_6
    const v7, 0x7f0e01ee

    new-instance v8, Lcom/android/systemui/power/PowerWarningsManager$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/power/PowerWarningsManager$2;-><init>(Lcom/android/systemui/power/PowerWarningsManager;)V

    invoke-virtual {v3, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    const v7, 0x7f0e01e5

    new-instance v8, Lcom/android/systemui/power/PowerWarningsManager$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/power/PowerWarningsManager$3;-><init>(Lcom/android/systemui/power/PowerWarningsManager;)V

    invoke-virtual {v3, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1
.end method


# virtual methods
.method public dismissInvalidChargerWarning()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mInvalidCharger:Z

    .line 313
    iget-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 316
    :cond_0
    return-void
.end method

.method public dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "PowerWarningsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vivo.dismiss.lowpower"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 80
    return-void
.end method

.method public isHifiEnable()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mHifiEnable:Z

    return v0
.end method

.method public isInvalidChargerWarningShowing()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mInvalidCharger:Z

    return v0
.end method

.method public isSpsOn()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mSpsOn:Z

    return v0
.end method

.method playLowBatterySound()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 176
    iget-object v6, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    const-string v7, "low_battery_sound_timeout"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 178
    .local v3, "silenceAfter":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/power/PowerWarningsManager;->mScreenOffTime:J

    sub-long v0, v6, v8

    .line 179
    .local v0, "offTime":J
    if-lez v3, :cond_1

    iget-wide v6, p0, Lcom/android/systemui/power/PowerWarningsManager;->mScreenOffTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    int-to-long v6, v3

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 182
    const-string v6, "PowerWarningsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen off too long ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms, limit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms): not waking up the user with low battery sound"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string v6, "PowerWarningsManager"

    const-string v7, "playing low battery sound. pick-a-doop!"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v6, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    const-string v7, "power_sounds_enabled"

    invoke-static {v6, v7, v10}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 190
    iget-object v6, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    const-string v7, "low_battery_sound"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 194
    .local v5, "soundUri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 195
    iget-object v6, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 196
    .local v2, "sfx":Landroid/media/Ringtone;
    if-eqz v2, :cond_0

    .line 197
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 198
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method public setSpsState(Z)V
    .locals 0
    .param p1, "isSpsOn"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerWarningsManager;->mSpsOn:Z

    .line 355
    return-void
.end method

.method public showBatteryFullTip(Z)V
    .locals 8
    .param p1, "show"    # Z

    .prologue
    const/16 v7, 0x2710

    const/4 v6, 0x0

    .line 101
    if-eqz p1, :cond_0

    .line 102
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v1, "mBuilder":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/16 v4, 0x10

    invoke-static {v2, v6, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 104
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f020499

    invoke-virtual {v2, v3, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 111
    iget-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 115
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "mBuilder":Landroid/app/Notification$Builder;
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public showInvalidChargerWarning()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 320
    const-string v2, "PowerWarningsManager"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerWarningsManager;->mInvalidCharger:Z

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerWarningsManager;->dismissLowBatteryWarning()V

    .line 323
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 325
    const v2, 0x7f0e001a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 326
    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 327
    const v2, 0x7f0e01e6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 330
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerWarningsManager$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerWarningsManager$6;-><init>(Lcom/android/systemui/power/PowerWarningsManager;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 337
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 338
    iput-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 339
    return-void
.end method

.method public showLowBatteryWarning(Z)V
    .locals 5
    .param p1, "playSound"    # Z

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/systemui/power/PowerWarningsManager;->isAlarmBoot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v2, "PowerWarningsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show low battery warning: level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerWarningsManager;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerWarningsManager;->mBucket:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] playSound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mHallLock:Z

    if-nez v2, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/power/PowerWarningsManager;->showLowBatteryWarningDialog()V

    .line 161
    :goto_1
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerWarningsManager;->playLowBatterySound()V

    goto :goto_0

    .line 154
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PowerWarningsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity LowPowerDialogActivity error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showLowPowerWhenUnlock(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerWarningsManager;->mShowLowPowerWhenUnlock:Z

    .line 343
    return-void
.end method

.method public showSaverMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 92
    return-void
.end method

.method public update(IIJ)V
    .locals 1
    .param p1, "batteryLevel"    # I
    .param p2, "bucket"    # I
    .param p3, "screenOffTime"    # J

    .prologue
    .line 84
    iput p1, p0, Lcom/android/systemui/power/PowerWarningsManager;->mBatteryLevel:I

    .line 85
    iput p2, p0, Lcom/android/systemui/power/PowerWarningsManager;->mBucket:I

    .line 86
    iput-wide p3, p0, Lcom/android/systemui/power/PowerWarningsManager;->mScreenOffTime:J

    .line 87
    return-void
.end method

.method public updateLowBatteryWarning()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
