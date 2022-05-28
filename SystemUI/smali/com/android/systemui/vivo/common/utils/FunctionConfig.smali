.class public final Lcom/android/systemui/vivo/common/utils/FunctionConfig;
.super Ljava/lang/Object;
.source "FunctionConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alwaysShowClock()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public static isCalendarPartitionEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 11
    const-string v1, "show_schedule"

    invoke-static {p0, v1, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLockToAppEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    const-string v1, "lock_to_app_enabled"

    invoke-static {p0, v1, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRedrawNotificatinIconEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 29
    const-string v1, "statusbar_notification_icon_redraw"

    invoke-static {p0, v1, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThaiCalendarEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v1, "use_thai_calendar"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "status":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isWholeThemeStyle(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const-string v1, "theme_style"

    const-string v2, "general"

    invoke-static {p0, v1, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "style":Ljava/lang/String;
    const-string v1, "whole"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static supportSIMSwap()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getNetLock()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 38
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getNetLock()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 41
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getOpEntry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 47
    goto :goto_0
.end method
