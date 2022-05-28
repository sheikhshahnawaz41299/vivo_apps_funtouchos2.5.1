.class public Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoSimStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;
    }
.end annotation


# static fields
.field private static final SIM_DESCRIPTION:Ljava/lang/String; = "sim_description"

.field private static final TAG:Ljava/lang/String; = "VivoSimStatusInfo"


# instance fields
.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSimUtils:Lcom/vivo/settings/SimUtils;

.field private mSlotId:I

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSlotId:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSubId:I

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 114
    .local v2, "state":I
    const v3, 0x7f0b002b

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "display":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 129
    :goto_0
    const-string v3, "service_state"

    invoke-virtual {p0, v3, v0}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    const-string v3, "roaming_state"

    const v4, 0x7f0b0022

    invoke-virtual {p0, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "operatorName":Ljava/lang/String;
    const-string v3, "VivoSimStatusInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operatorName is : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_2
    if-eqz v1, :cond_1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    const-string v3, "  "

    const-string v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 117
    .end local v1    # "operatorName":Ljava/lang/String;
    :pswitch_0
    const v3, 0x7f0b001e

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    goto :goto_0

    .line 120
    :pswitch_1
    const v3, 0x7f0b001f

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    goto :goto_0

    .line 123
    :pswitch_2
    const v3, 0x7f0b0020

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    goto :goto_0

    .line 126
    :pswitch_3
    const v3, 0x7f0b0021

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_0
    const-string v3, "roaming_state"

    const v4, 0x7f0b0023

    invoke-virtual {p0, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .restart local v1    # "operatorName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    const-string v3, "China Mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CMCC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    :cond_2
    const-string v3, "operator_name"

    const v4, 0x7f0b07cd

    invoke-virtual {p0, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_3
    return-void

    .line 144
    :cond_3
    if-eqz v1, :cond_5

    const-string v3, "China Unicom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "CHN-UNICOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    :cond_4
    const-string v3, "operator_name"

    const v4, 0x7f0b07cf

    invoke-virtual {p0, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 146
    :cond_5
    if-eqz v1, :cond_6

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 147
    const-string v3, "operator_name"

    invoke-virtual {p0, v3, v1}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 149
    :cond_6
    const-string v3, "operator_name"

    const v4, 0x7f0b000f

    invoke-virtual {p0, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 36
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 38
    const-string v1, "sim_description"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSlotId:I

    .line 40
    :cond_0
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->addPreferencesFromResource(I)V

    .line 42
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 86
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 46
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 47
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->showBBKBackButton()V

    .line 48
    const v4, 0x7f0b0982

    invoke-virtual {p0, v4}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setTitle(I)V

    .line 49
    new-instance v4, Lcom/vivo/settings/SimUtils;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 50
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v4}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 51
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v4, v2}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_0
    iput v2, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSlotId:I

    .line 53
    :cond_0
    iget v2, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 55
    .local v1, "subs":[I
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 56
    aget v2, v1, v3

    iput v2, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSubId:I

    .line 59
    :cond_1
    new-instance v2, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;

    iget v3, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSubId:I

    invoke-direct {v2, p0, v3}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;-><init>(Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;I)V

    iput-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 60
    const-string v2, ""

    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSimUtils:Lcom/vivo/settings/SimUtils;

    iget v4, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSlotId:I

    invoke-virtual {v3, v4}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0279

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSimUtils:Lcom/vivo/settings/SimUtils;

    iget v4, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSlotId:I

    invoke-virtual {v3, v4}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    :cond_2
    const-string v2, "VivoSimStatusInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is Resumed mSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSlotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x141

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 68
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    const-string v2, "signal_strength"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 70
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_4

    .line 71
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSimUtils:Lcom/vivo/settings/SimUtils;

    iget v3, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSimUtils:Lcom/vivo/settings/SimUtils;

    iget v3, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/vivo/settings/SimUtils;->isSimRadioOn(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AppFeature;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 74
    :cond_3
    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->removePreference(Landroid/preference/Preference;)V

    .line 80
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 81
    return-void

    .end local v1    # "subs":[I
    :cond_5
    move v2, v3

    .line 51
    goto/16 :goto_0

    .line 76
    .restart local v0    # "pref":Landroid/preference/Preference;
    .restart local v1    # "subs":[I
    :cond_6
    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->addPreference(Landroid/preference/Preference;)V

    goto :goto_1
.end method

.method protected setPrefSummary(Ljava/lang/String;I)V
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "summaryResId"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 162
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    .line 165
    :cond_0
    return-void
.end method

.method protected setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 155
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    return-void
.end method

.method protected updateNetworkType()V
    .locals 5

    .prologue
    .line 94
    const v2, 0x7f0b000f

    invoke-virtual {p0, v2}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 96
    .local v0, "networkType":I
    if-nez v0, :cond_0

    .line 97
    const-string v2, "VivoSimStatusInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkType networkType1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    .line 99
    const-string v2, "VivoSimStatusInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkType networkType2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    if-eqz v0, :cond_1

    .line 102
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_1
    const-string v2, "VivoSimStatusInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkType networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v2, "network_type"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
