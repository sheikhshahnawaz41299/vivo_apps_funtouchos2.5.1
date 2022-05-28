.class public Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;
.super Ljava/lang/Object;
.source "NotificationUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationUpdateManager"

.field private static sInstance:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;


# instance fields
.field private mObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->mObservers:Ljava/util/HashSet;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    invoke-direct {v0}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    return-object v0
.end method


# virtual methods
.method public onNotificationAdd(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    .line 44
    .local v1, "observer":Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;
    invoke-interface {v1, p1}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;->onNotificationAdd(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0

    .line 47
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;
    :cond_0
    return-void
.end method

.method public onNotificationRemove(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 58
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    .line 60
    .local v1, "observer":Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;
    invoke-interface {v1, p1}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;->onNotificationRemove(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 63
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;
    :cond_0
    return-void
.end method

.method public onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 50
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    .line 52
    .local v1, "observer":Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;
    invoke-interface {v1, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;->onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 55
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;
    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;)V
    .locals 4
    .param p1, "observer"    # Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 33
    const-string v1, "NotificationUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: double register by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public unregisterObserver(Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->mObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method
