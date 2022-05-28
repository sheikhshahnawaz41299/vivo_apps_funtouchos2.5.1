.class public Lcom/vivo/settings/OtgSettingsFragment;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "OtgSettingsFragment.java"


# static fields
.field private static final MSG_UPDATE_OTG_RESTORE_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OtgSettingsFragment"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerDelay:Landroid/os/Handler;

.field mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/vivo/settings/OtgSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/OtgSettingsFragment$1;-><init>(Lcom/vivo/settings/OtgSettingsFragment;)V

    iput-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/vivo/settings/OtgSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/vivo/settings/OtgSettingsFragment$3;-><init>(Lcom/vivo/settings/OtgSettingsFragment;)V

    iput-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mHandlerDelay:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/OtgSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/OtgSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/vivo/settings/OtgSettingsFragment;->updateOtgState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/OtgSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/OtgSettingsFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/vivo/settings/VivoUtils;->isOtgEnable()Z

    move-result v0

    return v0
.end method

.method private updateOtgState(Z)V
    .locals 3
    .param p1, "isOpen"    # Z

    .prologue
    .line 146
    const-string v0, "OtgSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 148
    invoke-static {p1}, Lcom/vivo/settings/VivoUtils;->setOtgEnable(Z)V

    .line 149
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/vivo/settings/OtgSettingsFragment;->addPreferencesFromResource(I)V

    .line 57
    const-string v0, "OtgSettingsFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "otg_settings"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/OtgSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    .line 59
    invoke-virtual {p0}, Lcom/vivo/settings/OtgSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/OtgSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 105
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mHandlerDelay:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mHandlerDelay:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/vivo/settings/OtgSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/vivo/settings/OtgSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/OtgSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mTimer:Ljava/util/Timer;

    .line 100
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 123
    const-string v2, "OtgSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick preference = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 126
    .local v0, "otgState":Z
    const-string v2, "OtgSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOtgCheckbox.isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0, v0}, Lcom/vivo/settings/OtgSettingsFragment;->updateOtgState(Z)V

    .line 129
    if-nez v0, :cond_0

    .line 130
    iget-object v2, p0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/vivo/settings/OtgSettingsFragment;->mHandlerDelay:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    .end local v0    # "otgState":Z
    :goto_1
    return v1

    .line 132
    .restart local v0    # "otgState":Z
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->startLoading()V

    goto :goto_0

    .line 138
    .end local v0    # "otgState":Z
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 64
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 65
    invoke-virtual {p0}, Lcom/vivo/settings/OtgSettingsFragment;->showBBKBackButton()V

    .line 66
    const v0, 0x7f0b089a

    invoke-virtual {p0, v0}, Lcom/vivo/settings/OtgSettingsFragment;->setTitle(I)V

    .line 67
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.REBOOT"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/vivo/settings/OtgSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/OtgSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-static {}, Lcom/vivo/settings/OtgSettingsFragment;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 71
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mTimer:Ljava/util/Timer;

    .line 73
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vivo/settings/OtgSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/vivo/settings/OtgSettingsFragment$2;-><init>(Lcom/vivo/settings/OtgSettingsFragment;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 88
    :cond_0
    return-void
.end method
