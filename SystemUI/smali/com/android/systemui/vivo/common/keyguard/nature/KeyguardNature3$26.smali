.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$26;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->notificationAnim(ZZZ)V
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
    .line 2068
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 2071
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v1, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$1300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;II)V

    .line 2072
    return-void
.end method
