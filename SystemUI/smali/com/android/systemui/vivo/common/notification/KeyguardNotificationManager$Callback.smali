.class public interface abstract Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
.super Ljava/lang/Object;
.source "KeyguardNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onKeyguardNotificationAppear(Z)V
.end method

.method public abstract onKeyguardNotificationClick(Ljava/lang/Runnable;)V
.end method

.method public abstract onKeyguardNotificationDisappear(Z)V
.end method

.method public abstract onMissedCallNotificationChanged(Z)V
.end method

.method public abstract onUnreadSmsNotificationChanged(Z)V
.end method
