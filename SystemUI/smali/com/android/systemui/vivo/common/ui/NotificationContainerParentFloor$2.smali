.class Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationContainerParentFloor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->animTo(FLandroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mStartState:I

.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;F)V
    .locals 1

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    iput p2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->val$to:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->mCanceled:Z

    .line 308
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getStatusBarState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->mStartState:I

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->mCanceled:Z

    .line 314
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->access$000(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    iget v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->val$to:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->mCanceled:Z

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->mStartState:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onFloorAnimateEnd(ZZI)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;->val$to:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->access$100(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;Ljava/lang/Boolean;)V

    .line 321
    return-void

    :cond_0
    move v0, v2

    .line 319
    goto :goto_0

    :cond_1
    move v1, v2

    .line 320
    goto :goto_1
.end method
