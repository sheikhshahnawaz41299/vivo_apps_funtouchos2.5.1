.class Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$1;
.super Ljava/lang/Object;
.source "ChargeView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 57
    .local v0, "value":F
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;)F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->access$002(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;I)I

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->invalidate()V

    .line 64
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->access$002(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;I)I

    .line 61
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/high16 v2, 0x43ff0000    # 510.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->access$202(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;I)I

    goto :goto_0
.end method
