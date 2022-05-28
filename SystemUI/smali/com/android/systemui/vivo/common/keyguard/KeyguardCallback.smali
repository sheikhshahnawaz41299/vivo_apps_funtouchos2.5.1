.class public abstract Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;
.super Ljava/lang/Object;
.source "KeyguardCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract dismiss(Z)V
.end method

.method protected abstract getNotificationView()Landroid/view/View;
.end method

.method protected abstract isOccluded()Z
.end method

.method protected abstract isSecure()Z
.end method

.method protected abstract isShowing()Z
.end method

.method protected abstract lockNow()V
.end method

.method protected abstract onAnimationToSideEnded()V
.end method

.method protected abstract onAnimationToSideStarted()V
.end method

.method protected abstract onMusicPanelVisibilityChanged(Z)V
.end method

.method protected abstract setBlurWallPaperShowing(Z)V
.end method

.method protected abstract show()V
.end method

.method protected abstract startActivity(Landroid/content/Intent;)V
.end method

.method protected abstract updateStatusbarWindowState()V
.end method

.method protected abstract updateUserActivityTimeout(J)V
.end method

.method protected abstract userActivity()V
.end method
