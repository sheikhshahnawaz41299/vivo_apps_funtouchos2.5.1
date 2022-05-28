.class Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$1;
.super Ljava/lang/Object;
.source "NotificationContainerParentFloor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->animTo(FLandroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$1;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 300
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$1;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->setBottomPosition(F)V

    .line 301
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithShade()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$1;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->access$000(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v1

    const/16 v2, -0xa

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpandedHeightInternal(FI)V

    .line 304
    :cond_1
    return-void
.end method
