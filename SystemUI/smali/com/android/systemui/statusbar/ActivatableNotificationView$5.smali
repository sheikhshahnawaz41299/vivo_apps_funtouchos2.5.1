.class Lcom/android/systemui/statusbar/ActivatableNotificationView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeDimmedBackground()V
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
    .line 576
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x4

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$200(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$300(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 584
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$502(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 585
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$400(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0
.end method
