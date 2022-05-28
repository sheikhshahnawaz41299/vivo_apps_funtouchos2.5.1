.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_INDEX:I = 0x12

.field private static final CALLS_PICK:I = 0x1

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field private static final DATA_PICK:I = 0x0

.field private static final DBG:Z = false

.field private static final DISALLOW_CONFIG_SIM:Ljava/lang/String; = "no_config_sim"

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_ACTIVITIES:Ljava/lang/String; = "activities"

.field private static final KEY_CALLS:Ljava/lang/String; = "sim_calls"

.field private static final KEY_CELLULAR_DATA:Ljava/lang/String; = "sim_cellular_data"

.field private static final KEY_SMS:Ljava/lang/String; = "sim_sms"

.field private static final MCC_INDEX:I = 0x9

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final MVNO_MATCH_DATA_INDEX:I = 0x15

.field private static final MVNO_TYPE_INDEX:I = 0x14

.field private static final NAME_INDEX:I = 0x1

.field private static final NUMERIC_INDEX:I = 0xb

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x13

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SERVER_INDEX:I = 0x6

.field private static final SIM_CARD_CATEGORY:Ljava/lang/String; = "sim_cards"

.field private static final SMS_PICK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SimSettings"

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_INDEX:I = 0x5


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCalls:Landroid/telephony/SubscriptionInfo;

.field private mCellularData:Landroid/telephony/SubscriptionInfo;

.field private mSMS:Landroid/telephony/SubscriptionInfo;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/preference/PreferenceScreen;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUtils:Lcom/android/settings/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 500
    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 100
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 101
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 102
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 104
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCellularData:Landroid/telephony/SubscriptionInfo;

    .line 105
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCalls:Landroid/telephony/SubscriptionInfo;

    .line 106
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSMS:Landroid/telephony/SubscriptionInfo;

    .line 108
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method private createPreferences()V
    .locals 7

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 140
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const v5, 0x7f06003e

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 142
    const-string v5, "sim_cards"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    .line 144
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 145
    .local v1, "numSlots":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 149
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, p0, v5, v3, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 150
    .local v2, "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    sub-int v5, v0, v1

    invoke-virtual {v2, v5}, Lcom/android/settings/sim/SimSettings$SimPreference;->setOrder(I)V

    .line 151
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 152
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    if-eqz v3, :cond_0

    .line 154
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 159
    return-void
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 490
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 494
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    .line 196
    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 178
    return-void
.end method

.method private updateAvailableSubInfos()V
    .locals 6

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 164
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 166
    .local v1, "numSlots":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 169
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    if-eqz v2, :cond_0

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private updateCallValues()V
    .locals 5

    .prologue
    .line 229
    const-string v3, "sim_calls"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 230
    .local v1, "simPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 231
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 234
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    const v3, 0x7f0b00d6

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 235
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b06bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    return-void

    .line 235
    :cond_0
    invoke-virtual {v2, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0
.end method

.method private updateCellularDataValues()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 214
    const-string v3, "sim_cellular_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 215
    .local v0, "simPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 217
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    const v3, 0x7f0b00d5

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 220
    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v2, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 226
    return-void

    .line 222
    :cond_1
    if-nez v1, :cond_0

    .line 223
    const v3, 0x7f0b06bd

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 225
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateSimSlotValues()V
    .locals 4

    .prologue
    .line 181
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    .line 183
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 184
    .local v2, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 185
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 186
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v3, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 187
    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 199
    const-string v3, "sim_sms"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 200
    .local v0, "simPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 202
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    const v3, 0x7f0b00d7

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 205
    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v2, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 211
    return-void

    .line 207
    :cond_1
    if-nez v1, :cond_0

    .line 208
    const v3, 0x7f0b06bd

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 210
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 124
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->createPreferences()V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sim/SimBootReceiver;->cancelNotification(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 256
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    instance-of v2, p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 260
    check-cast v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    check-cast p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v2, p2}, Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    .line 272
    :cond_0
    :goto_0
    return v4

    .line 261
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 262
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 264
    :cond_2
    const-string v2, "sim_calls"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_3

    .line 265
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    :cond_3
    const-string v2, "sim_sms"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 268
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 248
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAvailableSubInfos()V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 250
    return-void
.end method
