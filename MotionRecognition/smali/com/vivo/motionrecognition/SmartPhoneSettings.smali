.class public Lcom/vivo/motionrecognition/SmartPhoneSettings;
.super Lcom/vivo/app/VivoPreferenceActivity;
.source "SmartPhoneSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FALLBACK_DEFAULE_SIM_SETTINGS_VALUE:I = 0x1

.field private static final KEY_COVER_SCREEN_MUTE_SETTING:Ljava/lang/String; = "cover_screen_mute_setting"

.field private static final KEY_DEFAULT_SIM_SETTINGS:Ljava/lang/String; = "default_sim_settings"

.field private static final KEY_SMART_ANSWER_SETTING:Ljava/lang/String; = "smart_answer_setting"

.field private static final KEY_SMART_CALL_SETTING:Ljava/lang/String; = "smart_call_setting"

.field private static final KEY_SMART_SWITCH_SETTING:Ljava/lang/String; = "smart_switch_setting"

.field private static final KEY_SMART_TOUCH_SETTING:Ljava/lang/String; = "smart_touch_setting"

.field private static TAG:Ljava/lang/String;

.field private static cover_screen_mute_setting_state:I

.field private static default_sim_settings_state:I

.field private static smart_answer_setting_state:I

.field private static smart_call_setting_state:I

.field private static smart_switch_setting_state:I

.field private static smart_touch_setting_state:I


# instance fields
.field private SIM1_NAME:Ljava/lang/String;

.field private SIM2_NAME:Ljava/lang/String;

.field private data:[Ljava/lang/String;

.field private getDefaultCallSim:I

.field private mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mDefaultSimSettings:Landroid/preference/ListPreference;

.field private mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string v0, "SmartPhoneSettings"

    sput-object v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->TAG:Ljava/lang/String;

    .line 50
    sput v1, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_call_setting_state:I

    .line 51
    const/4 v0, 0x1

    sput v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->default_sim_settings_state:I

    .line 52
    sput v1, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    .line 53
    sput v1, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_switch_setting_state:I

    .line 54
    sput v1, Lcom/vivo/motionrecognition/SmartPhoneSettings;->cover_screen_mute_setting_state:I

    .line 55
    sput v1, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_touch_setting_state:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vivo/app/VivoPreferenceActivity;-><init>()V

    .line 71
    const-string v0, "SIM1"

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->SIM1_NAME:Ljava/lang/String;

    .line 72
    const-string v0, "SIM2"

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->SIM2_NAME:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getDefaultCallSim:I

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/motionrecognition/SmartPhoneSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartPhoneSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/motionrecognition/SmartPhoneSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartPhoneSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/motionrecognition/SmartPhoneSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartPhoneSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/motionrecognition/SmartPhoneSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartPhoneSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/motionrecognition/SmartPhoneSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartPhoneSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method private initSubInfoMap()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 78
    invoke-static {p0}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v3

    .line 79
    .local v3, "mFtTelephony":Landroid/telephony/FtTelephony;
    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {v3}, Landroid/telephony/FtTelephony;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "mFtSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/FtSubInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/FtSubInfo;

    .line 82
    .local v1, "mFtSubInfo":Landroid/telephony/FtSubInfo;
    if-nez v1, :cond_2

    .line 92
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mFtSubInfo":Landroid/telephony/FtSubInfo;
    .end local v2    # "mFtSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/FtSubInfo;>;"
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->SIM1_NAME:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->SIM2_NAME:Ljava/lang/String;

    aput-object v5, v4, v7

    iput-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->data:[Ljava/lang/String;

    .line 93
    return-void

    .line 85
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "mFtSubInfo":Landroid/telephony/FtSubInfo;
    .restart local v2    # "mFtSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/FtSubInfo;>;"
    :cond_2
    iget v4, v1, Landroid/telephony/FtSubInfo;->mSlotId:I

    if-nez v4, :cond_3

    .line 86
    iget-object v4, v1, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    iput-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->SIM1_NAME:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_3
    iget v4, v1, Landroid/telephony/FtSubInfo;->mSlotId:I

    if-ne v4, v7, :cond_0

    .line 88
    iget-object v4, v1, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    iput-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->SIM2_NAME:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateDefaultSimSettingsSummay(Ljava/lang/Object;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 427
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 428
    .local v2, "summaries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 429
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 431
    .local v0, "DefaultSimSettingsChange":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 432
    aget-object v4, v3, v1

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 433
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    const/4 v0, 0x1

    .line 438
    :cond_0
    if-nez v0, :cond_1

    .line 439
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    :cond_1
    return-void

    .line 431
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/vivo/app/VivoPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->showTitleLeftButton()V

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->setTitleLeftButtonIcon(I)V

    .line 102
    new-instance v0, Lcom/vivo/motionrecognition/SmartPhoneSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$1;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_smart_phone"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_call_setting_state:I

    .line 110
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_default_sim_setting"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->default_sim_settings_state:I

    .line 112
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_smart_listen"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    .line 114
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_smart_convert"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_switch_setting_state:I

    .line 116
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_cover_screen_mute_setting"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->cover_screen_mute_setting_state:I

    .line 118
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_smart_touch_setting"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_touch_setting_state:I

    .line 121
    const-string v0, "smart_call_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 122
    const-string v0, "default_sim_settings"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    .line 123
    const-string v0, "smart_answer_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 124
    const-string v0, "smart_switch_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 125
    const-string v0, "cover_screen_mute_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 126
    const-string v0, "smart_touch_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 128
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->initSubInfoMap()V

    .line 129
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->data:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 130
    invoke-static {p0}, Lcom/vivo/motionrecognition/SimCardUtils;->getDefaultDialSim(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getDefaultCallSim:I

    .line 131
    iget v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getDefaultCallSim:I

    sget v3, Lcom/vivo/motionrecognition/SmartPhoneSettings;->default_sim_settings_state:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getDefaultCallSim:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getDefaultCallSim:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_default_sim_setting"

    iget v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getDefaultCallSim:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    iget v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getDefaultCallSim:I

    sput v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->default_sim_settings_state:I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 137
    iget-object v3, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    sget v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_call_setting_state:I

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/vivo/motionrecognition/SimCardUtils;->isSelect:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 139
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 140
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 141
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 143
    iget-object v3, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_call_setting_state:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 144
    iget-object v3, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 145
    iget-object v3, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_switch_setting_state:I

    if-lez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 146
    iget-object v3, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->cover_screen_mute_setting_state:I

    if-lez v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v3, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_touch_setting_state:I

    if-lez v3, :cond_6

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    sget v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->default_sim_settings_state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->updateDefaultSimSettingsSummay(Ljava/lang/Object;)V

    .line 157
    return-void

    :cond_1
    move v0, v2

    .line 137
    goto :goto_0

    :cond_2
    move v0, v2

    .line 143
    goto :goto_1

    :cond_3
    move v0, v2

    .line 144
    goto :goto_2

    :cond_4
    move v0, v2

    .line 145
    goto :goto_3

    :cond_5
    move v0, v2

    .line 146
    goto :goto_4

    :cond_6
    move v1, v2

    .line 147
    goto :goto_5
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 418
    const-string v0, "falcon"

    const-string v1, "a1 pause"

    invoke-static {v0, v1}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onPause()V

    .line 420
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    const-string v4, "smart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smart onPreferenceChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/motionrecognition/Motion_log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v4, :cond_3

    .line 163
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    sput v2, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_call_setting_state:I

    .line 165
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bbk_smart_phone"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 168
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    move v2, v3

    .line 272
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_1
    return v2

    .line 171
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    sput v3, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_call_setting_state:I

    .line 172
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bbk_smart_phone"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 175
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    sget-boolean v5, Lcom/vivo/motionrecognition/SimCardUtils;->isSelect:Z

    if-eqz v5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_7

    .line 178
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "value":I
    iget v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getDefaultCallSim:I

    if-ne v4, v3, :cond_6

    .line 181
    sget v1, Lcom/vivo/motionrecognition/SmartPhoneSettings;->default_sim_settings_state:I

    .line 187
    :cond_4
    :goto_2
    sget v3, Lcom/vivo/motionrecognition/SmartPhoneSettings;->default_sim_settings_state:I

    if-eq v3, v1, :cond_5

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bbk_default_sim_setting"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_3
    sput v1, Lcom/vivo/motionrecognition/SmartPhoneSettings;->default_sim_settings_state:I

    .line 196
    :cond_5
    iget-object v3, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->updateDefaultSimSettingsSummay(Ljava/lang/Object;)V

    goto :goto_1

    .line 183
    :cond_6
    iget v3, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getDefaultCallSim:I

    if-ne v3, v7, :cond_4

    .line 185
    sget v1, Lcom/vivo/motionrecognition/SmartPhoneSettings;->default_sim_settings_state:I

    goto :goto_2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/vivo/motionrecognition/SmartPhoneSettings;->TAG:Ljava/lang/String;

    const-string v4, "could not persist default_sim_settings"

    invoke-static {v3, v4, v0}, Lcom/vivo/motionrecognition/Motion_log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 199
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "value":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v4, :cond_d

    .line 200
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bbk_smart_listen"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    .line 202
    sget-object v4, Lcom/vivo/motionrecognition/SmartPhoneSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSmartAnswerSetting.isChecked():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 206
    sget v4, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    if-ne v4, v3, :cond_9

    .line 207
    sput v2, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    .line 208
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bbk_smart_listen"

    sget v6, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 211
    :cond_9
    sget v4, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    if-ne v4, v7, :cond_8

    .line 212
    sput v8, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    .line 213
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bbk_smart_listen"

    sget v6, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 219
    :cond_a
    sget v2, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    if-nez v2, :cond_c

    .line 220
    sput v3, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    .line 221
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "bbk_smart_listen"

    sget v5, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    :cond_b
    :goto_5
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 224
    :cond_c
    sget v2, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    if-ne v2, v8, :cond_b

    .line 225
    sput v7, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    .line 226
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "bbk_smart_listen"

    sget v5, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_answer_setting_state:I

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 232
    :cond_d
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v4, :cond_f

    .line 233
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 234
    sput v2, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_switch_setting_state:I

    .line 235
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bbk_smart_convert"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 244
    :goto_6
    new-instance v2, Landroid/content/Intent;

    const-string v4, "action.smart.convert.change"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 239
    :cond_e
    sput v3, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_switch_setting_state:I

    .line 240
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "bbk_smart_convert"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_6

    .line 247
    :cond_f
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v4, :cond_11

    .line 248
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 249
    sput v2, Lcom/vivo/motionrecognition/SmartPhoneSettings;->cover_screen_mute_setting_state:I

    .line 250
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bbk_cover_screen_mute_setting"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 254
    :cond_10
    sput v3, Lcom/vivo/motionrecognition/SmartPhoneSettings;->cover_screen_mute_setting_state:I

    .line 255
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "bbk_cover_screen_mute_setting"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 259
    :cond_11
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 261
    sput v2, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_touch_setting_state:I

    .line 262
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bbk_smart_touch_setting"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 266
    :cond_12
    sput v3, Lcom/vivo/motionrecognition/SmartPhoneSettings;->smart_touch_setting_state:I

    .line 267
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "bbk_smart_touch_setting"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 16
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 279
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v11, 0x30f0004

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 281
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 282
    .local v7, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 283
    .local v2, "TopLevelView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 284
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 285
    sget-object v11, Lcom/vivo/motionrecognition/SmartPhoneSettings;->TAG:Ljava/lang/String;

    const-string v12, "disable AlertDialog Hardware acceleration"

    invoke-static {v11, v12}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 288
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f030001

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 289
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f0a0004

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 291
    .local v9, "text":Landroid/widget/TextView;
    const v11, 0x7f0a0005

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 293
    .local v5, "img":Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 297
    .local v3, "anim":Landroid/graphics/drawable/AnimationDrawable;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 298
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartCallSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 299
    const v11, 0x7f080074

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 300
    const v11, 0x7f040001

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 301
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 302
    const v11, 0x7f080073

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 303
    const v11, 0x7f08001f

    new-instance v12, Lcom/vivo/motionrecognition/SmartPhoneSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$2;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 309
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/vivo/motionrecognition/SmartPhoneSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$3;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .local v8, "ob":Landroid/graphics/drawable/Drawable;
    move-object v3, v8

    .line 395
    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 396
    if-eqz v3, :cond_2

    .line 397
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 398
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 400
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/vivo/app/VivoPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v11

    return v11

    .line 315
    .end local v8    # "ob":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 316
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartAnswerSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 317
    const v11, 0x7f080078

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 318
    const/high16 v11, 0x7f040000

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 319
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 320
    const v11, 0x7f080076

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 321
    const v11, 0x7f08001f

    new-instance v12, Lcom/vivo/motionrecognition/SmartPhoneSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$4;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 327
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/vivo/motionrecognition/SmartPhoneSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$5;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 335
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_5

    .line 336
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartSwitchSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 337
    const v11, 0x7f08007b

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 338
    const v11, 0x7f04000a

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 339
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 340
    const v11, 0x7f080079

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 341
    const v11, 0x7f08001f

    new-instance v12, Lcom/vivo/motionrecognition/SmartPhoneSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$6;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 347
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/vivo/motionrecognition/SmartPhoneSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$7;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 355
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_6

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mCoverScreenMuteSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 358
    const v11, 0x7f08007d

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 359
    const v11, 0x7f040004

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 360
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 361
    const v11, 0x7f08007c

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 362
    const v11, 0x7f08001f

    new-instance v12, Lcom/vivo/motionrecognition/SmartPhoneSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$8;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 368
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/vivo/motionrecognition/SmartPhoneSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$9;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 374
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_1

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mSmartTouchSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 376
    const v11, 0x7f080080

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 377
    const v11, 0x7f040017

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 378
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 379
    const v11, 0x7f08007f

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 380
    const v11, 0x7f08001f

    new-instance v12, Lcom/vivo/motionrecognition/SmartPhoneSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$10;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 386
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/vivo/motionrecognition/SmartPhoneSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings$11;-><init>(Lcom/vivo/motionrecognition/SmartPhoneSettings;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 405
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onResume()V

    .line 406
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_default_sim_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->updateDefaultSimSettingsSummay(Ljava/lang/Object;)V

    .line 410
    iget v0, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->getDefaultCallSim:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 411
    const-string v0, "default_sim"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartPhoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartPhoneSettings;->mDefaultSimSettings:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 414
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onStop()V

    .line 425
    return-void
.end method
