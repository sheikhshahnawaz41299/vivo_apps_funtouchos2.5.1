.class Lcom/android/systemui/statusbar/ActivatableNotificationView$8;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 925
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x1

    .line 908
    const-string v0, "ActivatableNotificationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd, mReverse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$1000(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResetTapTip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$100(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$1000(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$100(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTapTip(Z)V

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$1100(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 912
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$002(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)Z

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$102(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)Z

    .line 915
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 917
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$1000(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$1200(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 922
    :cond_0
    return-void
.end method
