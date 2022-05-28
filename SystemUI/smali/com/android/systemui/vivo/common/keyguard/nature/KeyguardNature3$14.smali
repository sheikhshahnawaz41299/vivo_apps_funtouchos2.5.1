.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showShortcutTips()V
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
    .line 971
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;I)I

    .line 974
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 975
    return-void
.end method
