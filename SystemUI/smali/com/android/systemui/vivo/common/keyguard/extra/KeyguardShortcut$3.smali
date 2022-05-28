.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->startUpAnimation()V
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
    .line 512
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ASYNCSTAY:Z

    .line 522
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$802(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;Z)Z

    .line 523
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$900(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    .line 524
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ASYNCSTAY:Z

    .line 517
    return-void
.end method
