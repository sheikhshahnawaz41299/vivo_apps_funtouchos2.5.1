.class Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->bouncerChangedAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->access$400(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->access$300(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->access$300(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 448
    return-void
.end method
