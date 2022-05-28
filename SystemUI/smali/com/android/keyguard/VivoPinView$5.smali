.class Lcom/android/keyguard/VivoPinView$5;
.super Ljava/lang/Object;
.source "VivoPinView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoPinView;->passwordbgAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPinView;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/keyguard/VivoPinView$5;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 667
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 668
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$5;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$500(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 669
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$5;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$600(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 670
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$5;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$700(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 671
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$5;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$800(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 672
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$5;->this$0:Lcom/android/keyguard/VivoPinView;

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/android/keyguard/VivoPinView;->access$1202(Lcom/android/keyguard/VivoPinView;Ljava/lang/String;)Ljava/lang/String;

    .line 673
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$5;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$1300(Lcom/android/keyguard/VivoPinView;)V

    .line 674
    return-void
.end method
