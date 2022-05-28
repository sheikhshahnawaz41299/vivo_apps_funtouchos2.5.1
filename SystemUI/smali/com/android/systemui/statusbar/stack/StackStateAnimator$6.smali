.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 552
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->access$000(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    .line 557
    :cond_0
    return-void
.end method
