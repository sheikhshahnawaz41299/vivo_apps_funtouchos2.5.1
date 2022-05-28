.class public Lcom/vivo/motionrecognition/SmartWakeupSettings;
.super Lcom/vivo/app/VivoPreferenceActivity;
.source "SmartWakeupSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_DBLCLICK_TO_OFF_SCREEN_SETTING:Ljava/lang/String; = "dblclick_to_off_screen_setting"

.field private static final KEY_SCREEN_ENABLE_OUT_POCKET_SETTING:Ljava/lang/String; = "screen_enable_out_pocket_setting"

.field private static final KEY_SMART_KEEP_SCREEN_ENABLE_SETTING:Ljava/lang/String; = "smart_keep_screen_enable_setting"

.field private static final KEY_SMART_WAKEUP_SETTING:Ljava/lang/String; = "smart_wakeup_setting"

.field private static final TAG:Ljava/lang/String; = "SmartWakeupUnlockSettings"

.field private static dblclick_to_off_screen_state:I

.field private static screen_enable_out_pocket_setting_state:I

.field private static smart_keep_screen_enable_setting_state:I

.field private static smart_wakeup_setting_state:I


# instance fields
.field private mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    sput v1, Lcom/vivo/motionrecognition/SmartWakeupSettings;->screen_enable_out_pocket_setting_state:I

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->smart_wakeup_setting_state:I

    .line 47
    sput v1, Lcom/vivo/motionrecognition/SmartWakeupSettings;->smart_keep_screen_enable_setting_state:I

    .line 48
    sput v1, Lcom/vivo/motionrecognition/SmartWakeupSettings;->dblclick_to_off_screen_state:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vivo/app/VivoPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/motionrecognition/SmartWakeupSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeupSettings;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/motionrecognition/SmartWakeupSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeupSettings;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/motionrecognition/SmartWakeupSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeupSettings;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/motionrecognition/SmartWakeupSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeupSettings;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/vivo/app/VivoPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->showTitleLeftButton()V

    .line 66
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->setTitleLeftButtonIcon(I)V

    .line 68
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_screen_enable_out_pocket_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeupSettings;->screen_enable_out_pocket_setting_state:I

    .line 71
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_smart_wakeup"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeupSettings;->smart_wakeup_setting_state:I

    .line 73
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_keep_screen_enable_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeupSettings;->smart_keep_screen_enable_setting_state:I

    .line 76
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vivo_dblclick_to_off_screen"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeupSettings;->dblclick_to_off_screen_state:I

    .line 79
    const-string v1, "screen_enable_out_pocket_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 80
    const-string v1, "smart_wakeup_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 81
    const-string v1, "smart_keep_screen_enable_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 82
    const-string v1, "dblclick_to_off_screen_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 85
    const-string v1, "ro.product.model.bbk"

    const-string v4, "unknown"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "mProductName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "PD1603F_EX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "smart_wakeup_settings_parent"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 92
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 93
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 94
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 96
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeupSettings;->screen_enable_out_pocket_setting_state:I

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 99
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeupSettings;->smart_wakeup_setting_state:I

    if-lez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeupSettings;->smart_keep_screen_enable_setting_state:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 104
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v4, Lcom/vivo/motionrecognition/SmartWakeupSettings;->dblclick_to_off_screen_state:I

    if-lez v4, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 107
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    return-void

    :cond_1
    move v1, v3

    .line 96
    goto :goto_0

    :cond_2
    move v1, v3

    .line 99
    goto :goto_1

    :cond_3
    move v1, v3

    .line 101
    goto :goto_2

    :cond_4
    move v2, v3

    .line 104
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onDestroy()V

    .line 313
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onPause()V

    .line 308
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 117
    const-string v2, "smart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smart onPreferenceChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/motionrecognition/Motion_log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    sput v6, Lcom/vivo/motionrecognition/SmartWakeupSettings;->screen_enable_out_pocket_setting_state:I

    .line 121
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_screen_enable_out_pocket_setting"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.action.SmartWakeupUnlockSettings.PocketMode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v2, "enableReceiver"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v5

    .line 132
    :cond_1
    sput v5, Lcom/vivo/motionrecognition/SmartWakeupSettings;->screen_enable_out_pocket_setting_state:I

    .line 133
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_screen_enable_out_pocket_setting"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 140
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.action.SmartWakeupUnlockSettings.PocketMode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "enableReceiver"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v2, :cond_4

    .line 145
    const/4 v0, 0x1

    .line 146
    .local v0, "enable":Z
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    sput v6, Lcom/vivo/motionrecognition/SmartWakeupSettings;->smart_wakeup_setting_state:I

    .line 148
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_smart_wakeup"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 151
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :cond_3
    sput v5, Lcom/vivo/motionrecognition/SmartWakeupSettings;->smart_wakeup_setting_state:I

    .line 154
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_smart_wakeup"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 158
    .end local v0    # "enable":Z
    :cond_4
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v2, :cond_6

    .line 159
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 160
    sput v6, Lcom/vivo/motionrecognition/SmartWakeupSettings;->smart_keep_screen_enable_setting_state:I

    .line 161
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_keep_screen_enable_setting"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 165
    :cond_5
    sput v5, Lcom/vivo/motionrecognition/SmartWakeupSettings;->smart_keep_screen_enable_setting_state:I

    .line 166
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_keep_screen_enable_setting"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 170
    :cond_6
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v2, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 172
    .restart local v0    # "enable":Z
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 174
    sput v6, Lcom/vivo/motionrecognition/SmartWakeupSettings;->dblclick_to_off_screen_state:I

    .line 175
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vivo_dblclick_to_off_screen"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 177
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 181
    :cond_7
    sput v5, Lcom/vivo/motionrecognition/SmartWakeupSettings;->dblclick_to_off_screen_state:I

    .line 182
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vivo_dblclick_to_off_screen"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 18
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 192
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v13, 0x30f0004

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 194
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 195
    .local v7, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 196
    .local v2, "TopLevelView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 197
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 198
    const-string v13, "SmartWakeupUnlockSettings"

    const-string v14, "disable AlertDialog Hardware acceleration"

    invoke-static {v13, v14}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 201
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f030001

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 202
    .local v12, "view":Landroid/view/View;
    const v13, 0x7f0a0004

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 204
    .local v11, "textT":Landroid/widget/TextView;
    const v13, 0x7f0a0006

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 206
    .local v10, "textB":Landroid/widget/TextView;
    const v13, 0x7f0a0005

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 208
    .local v5, "img":Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 210
    .local v3, "anim":Landroid/graphics/drawable/AnimationDrawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mScreenEnableOutPocketSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 212
    const v13, 0x7f080063

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 213
    const v13, 0x7f040005

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 214
    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 215
    const v13, 0x7f080062

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 216
    const v13, 0x7f08001f

    new-instance v14, Lcom/vivo/motionrecognition/SmartWakeupSettings$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vivo/motionrecognition/SmartWakeupSettings$1;-><init>(Lcom/vivo/motionrecognition/SmartWakeupSettings;)V

    invoke-virtual {v4, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 222
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/vivo/motionrecognition/SmartWakeupSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vivo/motionrecognition/SmartWakeupSettings$2;-><init>(Lcom/vivo/motionrecognition/SmartWakeupSettings;)V

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .local v8, "ob":Landroid/graphics/drawable/Drawable;
    move-object v3, v8

    .line 297
    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 298
    if-eqz v3, :cond_2

    .line 299
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 300
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 302
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/vivo/app/VivoPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v13

    return v13

    .line 228
    .end local v8    # "ob":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_4

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartWakeupSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 230
    const v13, 0x7f080067

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 231
    const v13, 0x7f040016

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 232
    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 233
    const v13, 0x7f080065

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 234
    const v13, 0x7f08001f

    new-instance v14, Lcom/vivo/motionrecognition/SmartWakeupSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vivo/motionrecognition/SmartWakeupSettings$3;-><init>(Lcom/vivo/motionrecognition/SmartWakeupSettings;)V

    invoke-virtual {v4, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 240
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/vivo/motionrecognition/SmartWakeupSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vivo/motionrecognition/SmartWakeupSettings$4;-><init>(Lcom/vivo/motionrecognition/SmartWakeupSettings;)V

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 246
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_5

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mSmartKeepScreenEnableSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 248
    const v13, 0x7f08006d

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 249
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f08006e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08006f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f080070

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f080071

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f080072

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const v13, 0x7f040003

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 260
    new-instance v9, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 261
    .local v9, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v9, v12}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 264
    const v13, 0x7f08006b

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 266
    const v13, 0x7f08001f

    new-instance v14, Lcom/vivo/motionrecognition/SmartWakeupSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vivo/motionrecognition/SmartWakeupSettings$5;-><init>(Lcom/vivo/motionrecognition/SmartWakeupSettings;)V

    invoke-virtual {v4, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 271
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/vivo/motionrecognition/SmartWakeupSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vivo/motionrecognition/SmartWakeupSettings$6;-><init>(Lcom/vivo/motionrecognition/SmartWakeupSettings;)V

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 277
    .end local v9    # "scrollView":Landroid/widget/ScrollView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/motionrecognition/SmartWakeupSettings;->mDblclickToOffScreenSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 279
    const v13, 0x7f08006a

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 280
    const v13, 0x7f040008

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 281
    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 282
    const v13, 0x7f080068

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 284
    const v13, 0x7f08001f

    new-instance v14, Lcom/vivo/motionrecognition/SmartWakeupSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vivo/motionrecognition/SmartWakeupSettings$7;-><init>(Lcom/vivo/motionrecognition/SmartWakeupSettings;)V

    invoke-virtual {v4, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 289
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/vivo/motionrecognition/SmartWakeupSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vivo/motionrecognition/SmartWakeupSettings$8;-><init>(Lcom/vivo/motionrecognition/SmartWakeupSettings;)V

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onStop()V

    .line 318
    return-void
.end method
