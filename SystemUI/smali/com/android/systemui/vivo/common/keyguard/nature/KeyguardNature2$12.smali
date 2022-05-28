.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showUnlockIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$12;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$12;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 995
    return-void
.end method
