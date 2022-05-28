.class public interface abstract Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract animateCollapsePanels(I)V
.end method

.method public abstract animateExpandNotificationsPanel()V
.end method

.method public abstract animateExpandSettingsPanel()V
.end method

.method public abstract buzzBeepBlinked()V
.end method

.method public abstract cancelPreloadRecentApps()V
.end method

.method public abstract changeUpslideState(ZZ)V
.end method

.method public abstract collapseUpSlideView()V
.end method

.method public abstract disable(IZ)V
.end method

.method public abstract hideRecentApps(ZZ)V
.end method

.method public abstract hideSearchPanel()V
.end method

.method public abstract notificationLightOff()V
.end method

.method public abstract notificationLightPulse(III)V
.end method

.method public abstract notifyStatusBarColorInfo(IIZ)V
.end method

.method public abstract preloadRecentApps()V
.end method

.method public abstract removeIcon(Ljava/lang/String;II)V
.end method

.method public abstract setImeWindowStatus(Landroid/os/IBinder;IIZ)V
.end method

.method public abstract setNetworkSpeed(Ljava/lang/String;)V
.end method

.method public abstract setSimcardFlow(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setStatusBarIconColor(Z)V
.end method

.method public abstract setSystemUiVisibility(II)V
.end method

.method public abstract setWindowState(II)V
.end method

.method public abstract showRecentApps(Z)V
.end method

.method public abstract showScreenPinningRequest()V
.end method

.method public abstract showSearchPanel()V
.end method

.method public abstract toggleRecentApps()V
.end method

.method public abstract topAppWindowChanged(Z)V
.end method

.method public abstract updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
.end method
