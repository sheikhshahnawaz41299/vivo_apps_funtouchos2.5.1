.class Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardClassical.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->bouncerChangedAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->access$300(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    return-void
.end method
