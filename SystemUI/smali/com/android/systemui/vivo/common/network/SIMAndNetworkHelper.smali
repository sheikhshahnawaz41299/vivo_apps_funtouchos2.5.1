.class public Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;
.super Ljava/lang/Object;
.source "SIMAndNetworkHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SIMAndNetworkHelper"

.field private static sInstance:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

.field private mSIM1ShowDualSignal:Z

.field private mSIM2ShowDualSignal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mSIM1ShowDualSignal:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mSIM2ShowDualSignal:Z

    .line 39
    iput-object p1, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForMTK;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForMTK;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    .line 45
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->sInstance:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->sInstance:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 35
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->sInstance:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    return-object v0
.end method

.method private getSingleLteMode()I
    .locals 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mContext:Landroid/content/Context;

    const-string v2, "preferred_singlelte_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 182
    .local v0, "singleLteMode":I
    return v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 76
    const-string v1, "airplane_mode_on"

    const-string v2, "SIMAndNetworkHelper"

    invoke-static {p0, v1, v0, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSIMCardUnicom(I)Z
    .locals 5
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 138
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 140
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46009"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    const/4 v2, 0x1

    .line 145
    :cond_1
    return v2
.end method


# virtual methods
.method public alwayShowSIMIcon()Z
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isNetEntryVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultDataPhoneId()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->getDefaultDataPhoneId()I

    move-result v0

    return v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getSIMIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->getSIMIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSIMName(I)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->getSIMName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSIMNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->getSIMNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowDualSignal(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mSIM1ShowDualSignal:Z

    .line 132
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mSIM2ShowDualSignal:Z

    goto :goto_0
.end method

.method public isDcHspapServcie(I)Z
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "dcHspapServcie":Z
    if-nez p1, :cond_1

    .line 231
    const-string v1, "1"

    const-string v2, "gsm.radio.dchspap.service"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 235
    :cond_0
    :goto_0
    const-string v1, "SIMAndNetworkHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,is dchspap Servcie :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v0

    .line 232
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 233
    const-string v1, "1"

    const-string v2, "gsm.radio.dchspap.service1"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isOnly3GSimCard(I)Z
    .locals 10
    .param p1, "subscription"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 210
    iget-object v8, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 211
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 212
    .local v4, "subId":[I
    if-eqz v4, :cond_1

    array-length v8, v4

    if-lt v8, v6, :cond_1

    .line 213
    aget v8, v4, v7

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "imsi":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 215
    new-array v1, v6, [Ljava/lang/String;

    const-string v8, "41405"

    aput-object v8, v1, v7

    .line 216
    .local v1, "arrayPLMN":[Ljava/lang/String;
    array-length v0, v1

    .line 217
    .local v0, "arrayLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 218
    aget-object v8, v1, v2

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 224
    .end local v0    # "arrayLength":I
    .end local v1    # "arrayPLMN":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "imsi":Ljava/lang/String;
    :goto_1
    return v6

    .line 217
    .restart local v0    # "arrayLength":I
    .restart local v1    # "arrayPLMN":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "imsi":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "arrayPLMN":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 224
    goto :goto_1
.end method

.method public isRadioOn(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->isRadioOn(I)Z

    move-result v0

    return v0
.end method

.method public isSIMCardCMCC(I)Z
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 152
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "mSimOperator":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 154
    const-string v3, "SIMAndNetworkHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimOperator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",subscription = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46007"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    :cond_0
    const/4 v2, 0x1

    .line 161
    :cond_1
    return v2
.end method

.method public isSIMCardCMCCByPhoneId(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 168
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "mSimOperator":Ljava/lang/String;
    const-string v3, "SIMAndNetworkHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimOperator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    if-eqz v0, :cond_1

    .line 171
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46007"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    :cond_0
    const/4 v2, 0x1

    .line 177
    :cond_1
    return v2
.end method

.method public isSIMInserted(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->isSIMInserted(I)Z

    move-result v0

    return v0
.end method

.method public isShowDualSignal(ILjava/lang/String;IIZ)Z
    .locals 6
    .param p1, "subscription"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "voiceNetworkClass"    # I
    .param p4, "dataNetworkClass"    # I
    .param p5, "isRoaming"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    if-nez p1, :cond_2

    .line 93
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mSIM1ShowDualSignal:Z

    .line 98
    :goto_0
    const/4 v0, 0x0

    .line 99
    .local v0, "isSIMInsert":Z
    const/4 v1, 0x0

    .line 100
    .local v1, "isSIMRadioOn":Z
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v1

    .line 105
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 106
    sget-object v4, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->TELECOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 124
    :cond_1
    :goto_1
    return v2

    .line 95
    .end local v0    # "isSIMInsert":Z
    .end local v1    # "isSIMRadioOn":Z
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mSIM2ShowDualSignal:Z

    goto :goto_0

    .line 109
    .restart local v0    # "isSIMInsert":Z
    .restart local v1    # "isSIMRadioOn":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSingleLteMode()I

    move-result v4

    if-ne v4, v3, :cond_4

    if-eq p4, v5, :cond_1

    .line 111
    :cond_4
    if-nez p5, :cond_1

    const/4 v4, 0x2

    if-eq p4, v4, :cond_5

    if-ne p4, v5, :cond_1

    :cond_5
    if-eq p4, p3, :cond_1

    .line 114
    if-nez p1, :cond_6

    .line 115
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mSIM1ShowDualSignal:Z

    :goto_2
    move v2, v3

    .line 119
    goto :goto_1

    .line 117
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mSIM2ShowDualSignal:Z

    goto :goto_2
.end method

.method public isSupportDualSIM()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->isSupportDualSIM()Z

    move-result v0

    return v0
.end method

.method public setDefaultDataPhoneId(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->setDefaultDataPhoneId(I)V

    .line 198
    return-void
.end method

.method public setRadioOnValue()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->setRadioOnValue()V

    .line 65
    return-void
.end method

.method public setSIMInsertState()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mPlatformHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;->setSIMInsertState()V

    .line 57
    return-void
.end method

.method public toggleAirplaneMode(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mContext:Landroid/content/Context;

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void

    .line 186
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
