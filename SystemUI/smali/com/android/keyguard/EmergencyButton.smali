.class public Lcom/android/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final TAG:Ljava/lang/String; = "EmergencyButton"


# instance fields
.field public gEmergency:Z

.field private final mCmccReceiver:Landroid/content/BroadcastReceiver;

.field private mEmergency:I

.field private mEntry_cmcc:Ljava/lang/Boolean;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEntry_cmcc:Ljava/lang/Boolean;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->gEmergency:Z

    .line 55
    new-instance v0, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 181
    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergency:I

    .line 183
    new-instance v0, Lcom/android/keyguard/EmergencyButton$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$3;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mCmccReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/EmergencyButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/keyguard/EmergencyButton;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/EmergencyButton;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEntry_cmcc:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/EmergencyButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergency:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/EmergencyButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergency:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/EmergencyButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateEmergencyCallButton(I)V
    .locals 4
    .param p1, "phoneState"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const/4 v0, 0x1

    .line 160
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEntry_cmcc:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->gEmergency:Z

    .line 166
    :goto_1
    if-nez v0, :cond_4

    .line 167
    const-string v2, "EmergencyButton"

    const-string v3, "mEmergency View.GONE "

    invoke-static {v2, v3}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    .line 179
    :goto_2
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v1

    .line 149
    .local v1, "simLocked":Z
    if-eqz v1, :cond_2

    .line 151
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v0

    goto :goto_0

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    goto :goto_0

    .line 163
    .end local v1    # "simLocked":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 170
    :cond_4
    const-string v2, "EmergencyButton"

    const-string v3, "mEmergency View.VISIBLE "

    invoke-static {v2, v3}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    .line 172
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    sget v2, Lcom/android/keyguard/R$string;->vivo_return_to_call:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyButton;->setText(I)V

    goto :goto_2

    .line 175
    :cond_5
    sget v2, Lcom/android/keyguard/R$string;->vivo_emergency:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyButton;->setText(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 82
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 84
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mEntry_cmcc:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mCmccReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEntry_cmcc:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mCmccReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 106
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 108
    new-instance v1, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 115
    .local v0, "phoneState":I
    const-string v1, "ro.vivo.op.entry"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.vivo.op.entry"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC_RW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mEntry_cmcc:Ljava/lang/Boolean;

    .line 116
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/EmergencyButton;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 118
    invoke-direct {p0, v0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton(I)V

    .line 119
    return-void

    .line 115
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public takeEmergencyCallAction()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 127
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 128
    const-string v2, "EmergencyButton"

    const-string v3, "takeEmergencyCallAction FINGER_SIMPINPUK disable "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_simpinpuk"

    const-string v4, "disable"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    .line 134
    .local v0, "bypassHandler":Z
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
