.class public Lcom/android/systemui/power/LowPowerDialogActivity;
.super Landroid/app/Activity;
.source "LowPowerDialogActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LowPowerDialogActivity"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field public mHallListener:Lcom/vivo/services/hallstate/IHallEventListener;

.field private mHallManager:Lcom/vivo/services/hallstate/HallManager;

.field private mMessage:Landroid/widget/TextView;

.field private mOkBtn:Landroid/widget/Button;

.field private mWaringManager:Lcom/android/systemui/power/PowerWarningsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    new-instance v0, Lcom/android/systemui/power/LowPowerDialogActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/LowPowerDialogActivity$4;-><init>(Lcom/android/systemui/power/LowPowerDialogActivity;)V

    iput-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    new-instance v0, Lcom/android/systemui/power/LowPowerDialogActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/LowPowerDialogActivity$5;-><init>(Lcom/android/systemui/power/LowPowerDialogActivity;)V

    iput-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mHallListener:Lcom/vivo/services/hallstate/IHallEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/LowPowerDialogActivity;)Lcom/android/systemui/power/PowerWarningsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/LowPowerDialogActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mWaringManager:Lcom/android/systemui/power/PowerWarningsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/LowPowerDialogActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/LowPowerDialogActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    const v0, 0x7f11013f

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/LowPowerDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mMessage:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f11003f

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/LowPowerDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mOkBtn:Landroid/widget/Button;

    .line 83
    const v0, 0x7f1101ca

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/LowPowerDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mCancelBtn:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mWaringManager:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerWarningsManager;->isSpsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x7f0e01ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mCancelBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mOkBtn:Landroid/widget/Button;

    const v1, 0x7f0e01e6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mOkBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/power/LowPowerDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/LowPowerDialogActivity$1;-><init>(Lcom/android/systemui/power/LowPowerDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isHifiAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mWaringManager:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerWarningsManager;->isHifiEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x7f0e01ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mOkBtn:Landroid/widget/Button;

    const v1, 0x7f0e01ee

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mCancelBtn:Landroid/widget/Button;

    const v1, 0x7f0e01e5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mOkBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/power/LowPowerDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/LowPowerDialogActivity$2;-><init>(Lcom/android/systemui/power/LowPowerDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mCancelBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/power/LowPowerDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/LowPowerDialogActivity$3;-><init>(Lcom/android/systemui/power/LowPowerDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x7f0e01eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private registerHallListener()V
    .locals 5

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mContext:Landroid/content/Context;

    const-string v2, "hall_state_manager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/services/hallstate/HallManager;

    iput-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    iget-object v2, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mHallListener:Lcom/vivo/services/hallstate/IHallEventListener;

    const-string v3, "LowPowerDialogActivity"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/services/hallstate/HallManager;->registerHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;I)Z

    move-result v0

    .line 155
    .local v0, "ret":Z
    const-string v1, "hall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerHallStateListener ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v0    # "ret":Z
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string v1, "hall"

    const-string v2, "HallManager is null"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unRegisterHallListener()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    iget-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mHallListener:Lcom/vivo/services/hallstate/IHallEventListener;

    invoke-virtual {v0, v1}, Lcom/vivo/services/hallstate/HallManager;->unregisterHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;)V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/power/LowPowerDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 48
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const-wide/16 v6, 0x2710

    iput-wide v6, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/power/LowPowerDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/power/LowPowerDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x280000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 53
    iput-object p0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mContext:Landroid/content/Context;

    .line 54
    const v5, 0x7f04006d

    invoke-virtual {p0, v5}, Lcom/android/systemui/power/LowPowerDialogActivity;->setContentView(I)V

    .line 55
    iget-object v5, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/PowerWarningsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/PowerWarningsManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mWaringManager:Lcom/android/systemui/power/PowerWarningsManager;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/power/LowPowerDialogActivity;->initView()V

    .line 58
    iget-object v5, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mWaringManager:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-virtual {v5, v10}, Lcom/android/systemui/power/PowerWarningsManager;->showLowPowerWhenUnlock(Z)V

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.vivo.dismiss.lowpower"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v5, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/power/LowPowerDialogActivity;->registerHallListener()V

    .line 66
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.vivo.dismiss.lowpower"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 68
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 69
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x15f90

    add-long/2addr v6, v8

    invoke-virtual {v0, v10, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/power/LowPowerDialogActivity;->unRegisterHallListener()V

    .line 78
    return-void
.end method
