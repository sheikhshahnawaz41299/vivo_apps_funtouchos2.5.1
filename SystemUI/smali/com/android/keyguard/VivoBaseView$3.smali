.class Lcom/android/keyguard/VivoBaseView$3;
.super Ljava/lang/Object;
.source "VivoBaseView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoBaseView;->moveYAnim(Landroid/view/View;FFLcom/android/keyguard/KeyguardSecurityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoBaseView;

.field final synthetic val$callback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field final synthetic val$indicator:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoBaseView;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/keyguard/VivoBaseView$3;->this$0:Lcom/android/keyguard/VivoBaseView;

    iput-object p2, p0, Lcom/android/keyguard/VivoBaseView$3;->val$indicator:Landroid/view/View;

    iput-object p3, p0, Lcom/android/keyguard/VivoBaseView$3;->val$callback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 290
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView$3;->val$indicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 292
    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView$3;->val$callback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView$3;->this$0:Lcom/android/keyguard/VivoBaseView;

    invoke-static {v1}, Lcom/android/keyguard/VivoBaseView;->access$000(Lcom/android/keyguard/VivoBaseView;)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v2, v0

    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView$3;->this$0:Lcom/android/keyguard/VivoBaseView;

    invoke-static {v1}, Lcom/android/keyguard/VivoBaseView;->access$100(Lcom/android/keyguard/VivoBaseView;)F

    move-result v1

    float-to-double v4, v1

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 293
    const-string v1, "VivoBaseView"

    const-string v2, "callback.showLockScreen();"

    invoke-static {v1, v2}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView$3;->val$callback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showLockScreen()V

    .line 295
    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView$3;->this$0:Lcom/android/keyguard/VivoBaseView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/VivoBaseView;->access$002(Lcom/android/keyguard/VivoBaseView;Z)Z

    .line 297
    :cond_0
    return-void
.end method
