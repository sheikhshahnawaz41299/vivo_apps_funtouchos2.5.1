.class public Lcom/vivo/motionrecognition/SimCardUtils;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/motionrecognition/SimCardUtils$SimSlot;
    }
.end annotation


# static fields
.field private static final BBK_DEFAULT_CALL_CARDS:Ljava/lang/String; = "bbk_default_call_cards"

.field private static final TAG:Ljava/lang/String; = "SmartMotionSimCardUtils"

.field public static isSelect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/motionrecognition/SimCardUtils;->isSelect:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getDefaultDialSim(Landroid/content/Context;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, -0x1

    .line 114
    .local v0, "defaultSim":I
    invoke-static {}, Lcom/vivo/motionrecognition/SimCardUtils;->isDualSimMode()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 115
    invoke-static {p0}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v8

    .line 116
    .local v8, "mFtTelephony":Landroid/telephony/FtTelephony;
    if-nez v8, :cond_0

    .line 117
    const/4 v10, -0x1

    .line 161
    .end local v8    # "mFtTelephony":Landroid/telephony/FtTelephony;
    :goto_0
    return v10

    .line 119
    .restart local v8    # "mFtTelephony":Landroid/telephony/FtTelephony;
    :cond_0
    invoke-virtual {v8}, Landroid/telephony/FtTelephony;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v7

    .line 120
    .local v7, "mFtSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/FtSubInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    .line 121
    const/4 v10, -0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 124
    .local v9, "resolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lcom/vivo/motionrecognition/SimCardUtils;->isSetRadioOn(Landroid/content/Context;Landroid/content/ContentResolver;I)Z

    move-result v3

    .line 125
    .local v3, "isRadioOn1":Z
    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/vivo/motionrecognition/SimCardUtils;->isSetRadioOn(Landroid/content/Context;Landroid/content/ContentResolver;I)Z

    move-result v4

    .line 126
    .local v4, "isRadioOn2":Z
    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 127
    :cond_2
    const/4 v10, -0x1

    goto :goto_0

    .line 129
    :cond_3
    const/4 v10, 0x4

    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "item1"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "1"

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const-string v11, "2"

    aput-object v11, v5, v10

    const/4 v10, 0x3

    const-string v11, "item4"

    aput-object v11, v5, v10

    .line 130
    .local v5, "itemArray":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "bbk_default_call_cards"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "dialCard":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v10, "null"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 132
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 134
    :cond_5
    const-string v10, "SmartMotionSimCardUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getDefaultDialSim()  dialCard "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/FtSubInfo;

    .line 136
    .local v6, "mFtSubInfo":Landroid/telephony/FtSubInfo;
    iget v10, v6, Landroid/telephony/FtSubInfo;->mSlotId:I

    if-nez v10, :cond_7

    .line 137
    const/4 v10, 0x1

    iget-object v11, v6, Landroid/telephony/FtSubInfo;->mIccId:Ljava/lang/String;

    aput-object v11, v5, v10

    goto :goto_1

    .line 139
    :cond_7
    iget v10, v6, Landroid/telephony/FtSubInfo;->mSlotId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 140
    const/4 v10, 0x2

    iget-object v11, v6, Landroid/telephony/FtSubInfo;->mIccId:Ljava/lang/String;

    aput-object v11, v5, v10

    goto :goto_1

    .line 143
    .end local v6    # "mFtSubInfo":Landroid/telephony/FtSubInfo;
    :cond_8
    const-string v10, "SmartMotionSimCardUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getDefaultDialSim()  SIM1 id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", SIM2 id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 146
    const/4 v10, 0x0

    sput-boolean v10, Lcom/vivo/motionrecognition/SimCardUtils;->isSelect:Z

    .line 147
    const/4 v0, 0x1

    .end local v1    # "dialCard":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isRadioOn1":Z
    .end local v4    # "isRadioOn2":Z
    .end local v5    # "itemArray":[Ljava/lang/String;
    .end local v7    # "mFtSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/FtSubInfo;>;"
    .end local v8    # "mFtTelephony":Landroid/telephony/FtTelephony;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :cond_9
    :goto_2
    move v10, v0

    .line 161
    goto/16 :goto_0

    .line 148
    .restart local v1    # "dialCard":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isRadioOn1":Z
    .restart local v4    # "isRadioOn2":Z
    .restart local v5    # "itemArray":[Ljava/lang/String;
    .restart local v7    # "mFtSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/FtSubInfo;>;"
    .restart local v8    # "mFtTelephony":Landroid/telephony/FtTelephony;
    .restart local v9    # "resolver":Landroid/content/ContentResolver;
    :cond_a
    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 150
    const/4 v10, 0x0

    sput-boolean v10, Lcom/vivo/motionrecognition/SimCardUtils;->isSelect:Z

    .line 151
    const/4 v0, 0x2

    goto :goto_2

    .line 152
    :cond_b
    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 154
    :cond_c
    const/4 v0, 0x0

    .line 155
    const/4 v10, 0x1

    sput-boolean v10, Lcom/vivo/motionrecognition/SimCardUtils;->isSelect:Z

    goto :goto_2

    .line 157
    :cond_d
    const/4 v10, 0x1

    sput-boolean v10, Lcom/vivo/motionrecognition/SimCardUtils;->isSelect:Z

    .line 158
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 40
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getSimStateBySlotId(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "simState":I
    invoke-static {}, Lcom/vivo/motionrecognition/SimCardUtils;->isMutiCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 100
    :goto_0
    const-string v1, "SmartMotionSimCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getSimStateBySlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v0

    .line 98
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public static isDualSimMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "isDual":Z
    invoke-static {}, Lcom/vivo/motionrecognition/SimCardUtils;->isMutiCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-static {v2}, Lcom/vivo/motionrecognition/SimCardUtils;->isSimStateReady(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/vivo/motionrecognition/SimCardUtils;->isSimStateReady(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 109
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 107
    goto :goto_0
.end method

.method public static isMutiCard()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSetRadioOn(Landroid/content/Context;Landroid/content/ContentResolver;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "slotId"    # I

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, "isRadioOn":Z
    invoke-static {}, Lcom/vivo/motionrecognition/SimCardUtils;->isMutiCard()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 50
    :try_start_0
    invoke-static {}, Lcom/vivo/motionrecognition/SimCardUtils;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 51
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 52
    const/4 v4, -0x2

    .line 53
    .local v4, "subId":I
    invoke-static {p0}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v3

    .line 54
    .local v3, "mFtTelephony":Landroid/telephony/FtTelephony;
    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v3, p2}, Landroid/telephony/FtTelephony;->getSubIdBySlot(I)I

    move-result v4

    .line 56
    invoke-virtual {v3, p2}, Landroid/telephony/FtTelephony;->isRadioOn(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 72
    .end local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "mFtTelephony":Landroid/telephony/FtTelephony;
    .end local v4    # "subId":I
    :cond_0
    :goto_0
    const-string v6, "SmartMotionSimCardUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".isSetRadioOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v2

    .line 58
    .restart local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .restart local v3    # "mFtTelephony":Landroid/telephony/FtTelephony;
    .restart local v4    # "subId":I
    :cond_1
    :try_start_1
    const-string v6, "SmartMotionSimCardUtils"

    const-string v7, "isSetRadioOn mFtTelephony == null"

    invoke-static {v6, v7}, Lcom/vivo/motionrecognition/Motion_log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 63
    .end local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "mFtTelephony":Landroid/telephony/FtTelephony;
    .end local v4    # "subId":I
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "SmartMotionSimCardUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".isSetRadioOn catch RemoteException!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/motionrecognition/Motion_log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    :try_start_2
    const-string v6, "SmartMotionSimCardUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".isSetRadioOn iTel is null! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/motionrecognition/Motion_log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 67
    .end local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 68
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isRadioOn()Z

    move-result v2

    goto :goto_0
.end method

.method public static isSimStateReady(I)Z
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 87
    const/4 v0, 0x5

    invoke-static {p0}, Lcom/vivo/motionrecognition/SimCardUtils;->getSimStateBySlotId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
