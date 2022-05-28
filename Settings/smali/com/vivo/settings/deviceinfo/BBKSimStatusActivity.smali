.class public Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;
.super Landroid/preference/PreferenceActivity;
.source "BBKSimStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BBKSimStatusActivity"


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
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSlotId:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSubId:I

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 99
    .local v2, "state":I
    const v3, 0x7f0b002b

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "display":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_0
    const-string v3, "service_state"

    invoke-virtual {p0, v3, v0}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const-string v3, "roaming_state"

    const v4, 0x7f0b0022

    invoke-virtual {p0, v4}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "operatorName":Ljava/lang/String;
    const-string v3, "BBKSimStatusActivity"

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

    .line 124
    :goto_2
    if-eqz v1, :cond_1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    const-string v3, "  "

    const-string v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 102
    .end local v1    # "operatorName":Ljava/lang/String;
    :pswitch_0
    const v3, 0x7f0b001e

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    goto :goto_0

    .line 105
    :pswitch_1
    const v3, 0x7f0b001f

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    goto :goto_0

    .line 108
    :pswitch_2
    const v3, 0x7f0b0020

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    goto :goto_0

    .line 111
    :pswitch_3
    const v3, 0x7f0b0021

    invoke-virtual {p0, v3}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    const-string v3, "roaming_state"

    const v4, 0x7f0b0023

    invoke-virtual {p0, v4}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    .restart local v1    # "operatorName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_4

    const-string v3, "China Mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CMCC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 128
    :cond_2
    const-string v3, "operator_name"

    const v4, 0x7f0b07cd

    invoke-virtual {p0, v3, v4}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->setPrefSummary(Ljava/lang/String;I)V

    .line 134
    :cond_3
    :goto_3
    return-void

    .line 129
    :cond_4
    if-eqz v1, :cond_6

    const-string v3, "China Unicom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "CHN-UNICOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 130
    :cond_5
    const-string v3, "operator_name"

    const v4, 0x7f0b07cf

    invoke-virtual {p0, v3, v4}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->setPrefSummary(Ljava/lang/String;I)V

    goto :goto_3

    .line 131
    :cond_6
    if-eqz v1, :cond_3

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 132
    const-string v3, "operator_name"

    invoke-virtual {p0, v3, v1}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->addPreferencesFromResource(I)V

    .line 36
    invoke-static {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->updateList(Landroid/app/ListActivity;)V

    .line 37
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 38
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/vivo/settings/deviceinfo/BBKSimStatusTabActivity;->SIM_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSlotId:I

    .line 39
    iget v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 41
    .local v0, "subs":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 42
    aget v1, v0, v3

    iput v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSubId:I

    .line 45
    :cond_0
    new-instance v1, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSubId:I

    invoke-direct {v1, p0, v2}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;-><init>(Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;I)V

    iput-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 46
    new-instance v1, Lcom/vivo/settings/SimUtils;

    invoke-direct {v1, p0}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 75
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 52
    const-string v1, "BBKSimStatusActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is Resumed mSubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSlotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 57
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 59
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSimUtils:Lcom/vivo/settings/SimUtils;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSimUtils:Lcom/vivo/settings/SimUtils;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/vivo/settings/SimUtils;->isSimRadioOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/AppFeature;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 69
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 70
    return-void

    .line 65
    .restart local v0    # "pref":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected setPrefSummary(Ljava/lang/String;I)V
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "summaryResId"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 145
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    .line 148
    :cond_0
    return-void
.end method

.method protected setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 138
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected updateNetworkType()V
    .locals 5

    .prologue
    .line 83
    const v2, 0x7f0b000f

    invoke-virtual {p0, v2}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 85
    .local v0, "networkType":I
    if-eqz v0, :cond_0

    .line 86
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_0
    const-string v2, "BBKSimStatusActivity"

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

    .line 90
    const-string v2, "network_type"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
