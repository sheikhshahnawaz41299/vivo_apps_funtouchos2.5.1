.class public Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;
.super Ljava/lang/Object;
.source "SIMAndNetworkHelperForQCOM.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SIMAndNetworkHelper"

.field private static mInstance:Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFtTelephony:Landroid/telephony/FtTelephony;

.field private mIsSIM1Insert:Z

.field private mIsSIM2Insert:Z

.field private mRadioOnSIM1:Z

.field private mRadioOnSIM2:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM1Insert:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM2Insert:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mRadioOnSIM1:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mRadioOnSIM2:Z

    .line 38
    iput-object p1, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mFtTelephony:Landroid/telephony/FtTelephony;

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->setSIMInsertState()V

    .line 41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mInstance:Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mInstance:Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;

    .line 34
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mInstance:Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;

    return-object v0
.end method


# virtual methods
.method public getDefaultDataPhoneId()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    return v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->isSupportDualSIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x2

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSIMIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->isSupportDualSIM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 156
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 160
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSIMName(I)Ljava/lang/String;
    .locals 6
    .param p1, "slot"    # I

    .prologue
    .line 108
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 110
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 112
    .local v2, "simInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 113
    const-string v3, "SIMAndNetworkHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSIMName, slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v2    # "simInfo":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return-object v3

    .line 118
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    if-nez p1, :cond_2

    const-string v3, "SIM1"

    goto :goto_0

    :cond_2
    const-string v3, "SIM2"

    goto :goto_0

    .line 121
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSIMNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mFtTelephony:Landroid/telephony/FtTelephony;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0, p1}, Landroid/telephony/FtTelephony;->getSubInfoBySlot(I)Landroid/telephony/FtSubInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/FtSubInfo;->mNumber:Ljava/lang/String;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isRadioOn(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 92
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mRadioOnSIM1:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mRadioOnSIM2:Z

    goto :goto_0
.end method

.method public isSIMInserted(I)Z
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 73
    const-string v0, "SIMAndNetworkHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSIMInserted, slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsSIM1Insert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM1Insert:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsSIM2Insert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM2Insert:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM1Insert:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM2Insert:Z

    goto :goto_0
.end method

.method public isSupportDualSIM()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public setDefaultDataPhoneId(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 143
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 144
    const-string v1, "SIMAndNetworkHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultDataPhoneId, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public setRadioOnValue()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mFtTelephony:Landroid/telephony/FtTelephony;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mFtTelephony:Landroid/telephony/FtTelephony;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/FtTelephony;->isRadioOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mRadioOnSIM1:Z

    .line 100
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mFtTelephony:Landroid/telephony/FtTelephony;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/FtTelephony;->isRadioOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mRadioOnSIM2:Z

    .line 102
    :cond_0
    const-string v0, "SIMAndNetworkHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioOnValue, mRadioOnSIM1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mRadioOnSIM1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRadioOnSIM2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mRadioOnSIM2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setSIMInsertState()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->isSupportDualSIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM1Insert:Z

    .line 82
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM2Insert:Z

    .line 86
    :goto_0
    const-string v0, "SIMAndNetworkHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSIMInsertState, mIsSIM1Insert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM1Insert:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsSIM2Insert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM2Insert:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 84
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/compatible/network/SIMAndNetworkHelperForQCOM;->mIsSIM1Insert:Z

    goto :goto_0
.end method
