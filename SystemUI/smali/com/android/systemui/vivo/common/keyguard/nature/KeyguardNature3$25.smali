.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->notificationAnim(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$25;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2056
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$25;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$25;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$25;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    .line 2057
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$25;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2058
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$25;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2059
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$25;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$7800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2060
    return-void
.end method
