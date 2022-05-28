.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$24;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelShortcutTipsAnim(Landroid/view/MotionEvent;)V
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
    .line 1599
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$24;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$24;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;ZI)V

    .line 1602
    return-void
.end method
