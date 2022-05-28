.class Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$1;
.super Ljava/lang/Object;
.source "NotificationHoodManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->runBreathAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 183
    return-void
.end method
