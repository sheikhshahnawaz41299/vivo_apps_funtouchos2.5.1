.class public Lcom/android/settings/notification/NotificationAccessSettings;
.super Lcom/android/settings/notification/ManagedServiceSettings;
.source "NotificationAccessSettings.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/android/settings/notification/NotificationAccessSettings;->getNotificationListenerConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method public static getEnabledListenersCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledServicesCount(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getListenersCount(Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 56
    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getServicesCount(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method private static getNotificationListenerConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/notification/ManagedServiceSettings$Config;-><init>()V

    .line 33
    .local v0, "c":Lcom/android/settings/notification/ManagedServiceSettings$Config;
    sget-object v1, Lcom/android/settings/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 34
    const-string v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 35
    const-string v1, "android.service.notification.NotificationListenerService"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 36
    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 37
    const-string v1, "notification listener"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 38
    const v1, 0x7f0b0707

    iput v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->warningDialogTitle:I

    .line 39
    const v1, 0x7f0b0708

    iput v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->warningDialogSummary:I

    .line 40
    const v1, 0x7f0b0706

    iput v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->emptyText:I

    .line 41
    return-object v0
.end method


# virtual methods
.method protected getConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/notification/ManagedServiceSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->showBBKBackButton()V

    .line 48
    return-void
.end method
