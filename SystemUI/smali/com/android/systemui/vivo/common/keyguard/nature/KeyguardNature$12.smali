.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->clickAnim()V
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
    .line 860
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$12;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 862
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$12;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$2802(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;I)I

    .line 863
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$12;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;Z)Z

    .line 864
    return-void
.end method
