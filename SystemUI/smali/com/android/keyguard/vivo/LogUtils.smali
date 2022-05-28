.class public Lcom/android/keyguard/vivo/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_CREATE_HOLSTER_VIEW_TIME:Z

.field public static final DEBUG_CREATE_MAIN_VIEW_TIME:Z

.field public static final DEBUG_CREATE_SHORTCUT_VIEW_TIME:Z

.field public static final DEBUG_CREATE_SMART_WAKE_VIEW_TIME:Z

.field public static final DEBUG_CREATE_VIEWS_TIME:Z

.field public static final DEBUG_STATE_MONITOR:Z = true

.field public static final IS_LOG_CTRL_OPEN:Z

.field public static final KEY_VIVO_LOG_CTRL:Ljava/lang/String; = "persist.sys.log.ctrl"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    const-string v0, "persist.sys.log.ctrl"

    const-string v3, "no"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->IS_LOG_CTRL_OPEN:Z

    .line 16
    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    const-string v3, "debug.keyguard"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->IS_LOG_CTRL_OPEN:Z

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG:Z

    .line 24
    sget-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG_CREATE_VIEWS_TIME:Z

    .line 26
    sget-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG_CREATE_VIEWS_TIME:Z

    if-nez v0, :cond_1

    const-string v0, "1"

    const-string v3, "debug_keyguard_shortcut"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG_CREATE_SHORTCUT_VIEW_TIME:Z

    .line 29
    sget-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG_CREATE_VIEWS_TIME:Z

    if-nez v0, :cond_2

    const-string v0, "1"

    const-string v3, "debug_keyguard_holster"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG_CREATE_HOLSTER_VIEW_TIME:Z

    .line 32
    sget-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG_CREATE_VIEWS_TIME:Z

    if-nez v0, :cond_3

    const-string v0, "1"

    const-string v3, "debug_keyguard_main"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG_CREATE_MAIN_VIEW_TIME:Z

    .line 35
    sget-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG_CREATE_VIEWS_TIME:Z

    if-nez v0, :cond_4

    const-string v0, "1"

    const-string v3, "debug_keyguard_smart"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    sput-boolean v1, Lcom/android/keyguard/vivo/LogUtils;->DEBUG_CREATE_SMART_WAKE_VIEW_TIME:Z

    return-void

    :cond_6
    move v0, v1

    .line 16
    goto :goto_0

    :cond_7
    move v0, v1

    .line 26
    goto :goto_1

    :cond_8
    move v0, v1

    .line 29
    goto :goto_2

    :cond_9
    move v0, v1

    .line 32
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/keyguard/vivo/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method
