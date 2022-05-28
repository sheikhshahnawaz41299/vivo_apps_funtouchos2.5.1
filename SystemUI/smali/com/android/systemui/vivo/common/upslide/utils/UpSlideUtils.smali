.class public Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;
.super Ljava/lang/Object;
.source "UpSlideUtils.java"


# static fields
.field private static final APP_SWITCH_TIMEOUT:J = 0x1d6L

.field private static mAppSwitchDueTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->mAppSwitchDueTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbsoluteShieldHeight()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0xe

    return v0
.end method

.method public static getCurrentBuildVersion()I
    .locals 1

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static isAppSwitchDue()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 64
    sget-wide v2, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->mAppSwitchDueTime:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 73
    .local v0, "isAppSwitchDue":Z
    .local v1, "time":Ljava/lang/Long;
    :goto_0
    return v0

    .line 67
    .end local v0    # "isAppSwitchDue":Z
    .end local v1    # "time":Ljava/lang/Long;
    :cond_0
    const/4 v0, 0x0

    .line 68
    .restart local v0    # "isAppSwitchDue":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->mAppSwitchDueTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 69
    .restart local v1    # "time":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 70
    const/4 v0, 0x1

    .line 72
    :cond_1
    sput-wide v6, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->mAppSwitchDueTime:J

    goto :goto_0
.end method

.method public static isSupportEyeProtectionMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 27
    :try_start_0
    const-string v4, "android.util.FtFeature"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 28
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "isColorManagerSupport"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 29
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 30
    .local v3, "supported":Z
    const-string v4, "EyeSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportEyeProtectionMode >>> supported = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "supported":Z
    :goto_0
    return v3

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EyeSwitcher"

    const-string v6, "isSupportEyeProtectionMode >>> occur a internal error!"

    invoke-static {v4, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 34
    goto :goto_0
.end method

.method public static isSupportKeyCodeBarSwipe()Z
    .locals 2

    .prologue
    .line 17
    const-string v0, "PD1422L"

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getProductModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PD1503V"

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getProductModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportMusicPlay()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public static updateAppSwitchDueTime()V
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1d6

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->mAppSwitchDueTime:J

    .line 61
    return-void
.end method
