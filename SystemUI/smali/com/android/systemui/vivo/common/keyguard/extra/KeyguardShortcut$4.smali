.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->startDownAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 546
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ASYNCSTAY:Z

    .line 547
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$802(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;Z)Z

    .line 548
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$900(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    .line 549
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setVisibility(I)V

    .line 550
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ASYNCSTAY:Z

    .line 542
    return-void
.end method
