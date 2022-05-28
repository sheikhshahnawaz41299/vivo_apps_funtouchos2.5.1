.class Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChargeView.java"


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
    .line 67
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const-string v1, "on charge animation end!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->access$300(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->access$402(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;Z)Z

    .line 71
    return-void
.end method
