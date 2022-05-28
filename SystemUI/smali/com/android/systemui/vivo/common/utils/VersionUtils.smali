.class public final Lcom/android/systemui/vivo/common/utils/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# static fields
.field public static final HIFI_ALWAYS_ON:Ljava/lang/String; = "1"

.field public static final HIFI_CONFIG_STATE:Ljava/lang/String; = "ro.config.hifi_config_state"

.field public static final HIFI_PERSIST_STATE:Ljava/lang/String; = "persist.vivo.phone.hifi"

.field public static final HIFI_PERSIST_STATE_VALUE_HAS_HIFI:Ljava/lang/String; = "Have_hifi"

.field public static final HIFI_PERSIST_STATE_VALUE_NO_HIFI:Ljava/lang/String; = "No_hifi"

.field public static final HIFI_SWITCH:Ljava/lang/String; = "2"

.field public static final NO_HIFI:Ljava/lang/String; = "0"

.field public static final mSecureConfigEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-string v0, "yes"

    const-string v1, "persist.vivo.unifiedconfig.sec"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/VersionUtils;->mSecureConfigEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "ro.product.customize.bbk"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceHifiState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    const-string v1, "ro.config.hifi_config_state"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "hifiConfigState":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "1"

    .line 235
    :goto_0
    return-object v1

    .line 232
    :cond_0
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const-string v1, "2"

    goto :goto_0

    .line 235
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public static getNetLock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "persist.vivo.netlock"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "ro.vivo.op.entry"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "ro.vivo.product.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "ro.product.model.bbk"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "ro.vivo.rom.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static is4Signal()Z
    .locals 2

    .prologue
    .line 264
    const-string v0, "persist.vivo.four.signal"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBlackStyle()Z
    .locals 3

    .prologue
    .line 187
    const-string v0, "black"

    const-string v1, "ro.vivo.rom.style"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCSFB()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getNetLock()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 30
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getNetLock()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getOpEntry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 39
    goto :goto_0
.end method

.method public static isCmccCustomizedVersion()Z
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getCustomize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN-YD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCmccTestVersion()Z
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getOpEntry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC_RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCmccVersion()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getNetLock()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 51
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getNetLock()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 54
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getOpEntry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public static isExport()Z
    .locals 3

    .prologue
    .line 240
    const-string v1, "ro.vivo.product.overseas"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "countside":Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const/4 v1, 0x1

    .line 244
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFeatureSupportHifi()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    const-string v4, "Have_hifi"

    const-string v5, "persist.vivo.phone.hifi"

    const-string v6, "No_hifi"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 203
    .local v1, "isPersistAvailable":Z
    const-string v4, "0"

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getDeviceHifiState()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    .line 204
    .local v0, "isConfigStateAvailable":Z
    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .end local v0    # "isConfigStateAvailable":Z
    :cond_2
    move v0, v2

    .line 203
    goto :goto_0
.end method

.method public static isHifiAlwaysOn()Z
    .locals 3

    .prologue
    .line 214
    const-string v0, "2"

    const-string v1, "ro.config.hifi_config_state"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMtbfTest()Z
    .locals 3

    .prologue
    .line 194
    const-string v0, "1"

    const-string v1, "persist.sys.mtbf.test"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetEntryVersion()Z
    .locals 2

    .prologue
    .line 156
    const-string v0, "yes"

    const-string v1, "ro.product.net.entry.bbk"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowLowBatteryWarning()Z
    .locals 3

    .prologue
    .line 248
    const-string v0, "yes"

    const-string v1, "persist.vivo.battery.lowwarning"

    const-string v2, "yes"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportBatteryPercentage()Z
    .locals 3

    .prologue
    .line 255
    const-string v0, "Have_battery_percentage"

    const-string v1, "persist.vivo.phone.num_battery"

    const-string v2, "No_battery_percentage"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportHSDPAP()Z
    .locals 2

    .prologue
    .line 260
    const-string v0, "PD1523F_EX"

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getProductModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PD1524F_EX"

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getProductModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSecurceConfig()Z
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/android/systemui/vivo/common/utils/VersionUtils;->mSecureConfigEnabled:Z

    return v0
.end method

.method public static isTelecomCustomizedVersion()Z
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getCustomize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN-DX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTelecomTestVersion()Z
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getOpEntry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTCC_RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTelecomVersion()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getNetLock()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 99
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getNetLock()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 102
    goto :goto_0

    .line 105
    :cond_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getOpEntry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 108
    goto :goto_0
.end method

.method public static isUnicomCustomizedVersion()Z
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getCustomize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN-LT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnicomTestVersion()Z
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getOpEntry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNICOM_RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnicomVersion()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 72
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isExport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getNetLock()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 78
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getNetLock()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNICOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getOpEntry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNICOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 87
    goto :goto_0
.end method
