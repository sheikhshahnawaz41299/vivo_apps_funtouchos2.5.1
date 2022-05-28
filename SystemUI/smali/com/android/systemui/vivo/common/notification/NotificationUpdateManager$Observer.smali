.class public interface abstract Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;
.super Ljava/lang/Object;
.source "NotificationUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onNotificationAdd(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end method

.method public abstract onNotificationRemove(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
.end method
