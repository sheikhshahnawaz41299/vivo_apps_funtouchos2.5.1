.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNatureShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->access$002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->access$100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;Z)V

    .line 64
    return-void
.end method
