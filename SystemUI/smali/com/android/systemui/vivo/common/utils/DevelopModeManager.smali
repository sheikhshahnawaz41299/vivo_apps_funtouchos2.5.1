.class public Lcom/android/systemui/vivo/common/utils/DevelopModeManager;
.super Ljava/lang/Object;
.source "DevelopModeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DevelopModeManager"

.field private static mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private static mModeOn:Z

.field private static mUtils:Lcom/android/systemui/vivo/common/utils/DevelopModeManager;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mModeOn:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mContext:Landroid/content/Context;

    .line 30
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/DevelopModeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mUtils:Lcom/android/systemui/vivo/common/utils/DevelopModeManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mUtils:Lcom/android/systemui/vivo/common/utils/DevelopModeManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mUtils:Lcom/android/systemui/vivo/common/utils/DevelopModeManager;

    return-object v0
.end method

.method public static isModeOn()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mModeOn:Z

    return v0
.end method

.method public static isNotify(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 42
    const-string v0, "com.vivo.daemonService"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/16 v1, 0x2774

    if-ne v0, v1, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setState(Z)V
    .locals 2
    .param p0, "isAddNotification"    # Z

    .prologue
    .line 51
    if-eqz p0, :cond_0

    .line 52
    const-string v0, "DevelopModeManager"

    const-string v1, "develop mode on!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mModeOn:Z

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "DevelopModeManager"

    const-string v1, "develop mode off!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mModeOn:Z

    goto :goto_0
.end method


# virtual methods
.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 34
    sput-object p1, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 35
    return-void
.end method

.method public updateDisplay()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mModeOn:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->showDevelopMode(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mModeOn:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->showDevelopMode(Z)V

    .line 66
    sget-object v0, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    sget-boolean v1, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->mModeOn:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showDevelopModeTip(Z)V

    .line 67
    return-void
.end method
