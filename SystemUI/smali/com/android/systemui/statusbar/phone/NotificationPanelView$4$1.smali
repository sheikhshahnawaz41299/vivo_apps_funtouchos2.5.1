.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$602(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I

    .line 468
    return-void
.end method
