.class Lcom/android/systemui/statusbar/phone/PanelView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$onAnimationFinished:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->mCancelled:Z

    .line 1174
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1178
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$502(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1184
    :goto_0
    return-void

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
