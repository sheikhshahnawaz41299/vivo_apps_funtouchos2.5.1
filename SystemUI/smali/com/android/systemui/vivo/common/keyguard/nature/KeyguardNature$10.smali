.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 801
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;Z)Z

    .line 802
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$202(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;Z)Z

    .line 803
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$2300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$2402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;I)I

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$2502(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;Z)Z

    .line 808
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$2600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    .line 812
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    goto :goto_0
.end method
