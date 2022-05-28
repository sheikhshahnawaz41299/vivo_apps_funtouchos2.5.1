.class Lcom/android/keyguard/VivoPinView$6;
.super Ljava/lang/Object;
.source "VivoPinView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 677
    iput-object p1, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 713
    const-string v0, "VivoPinView"

    const-string v1, "onAnimationCancel "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$500(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 715
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$600(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 716
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$700(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 717
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$800(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 718
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$500(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 719
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$600(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 720
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$700(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 721
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$800(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 722
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$100(Lcom/android/keyguard/VivoPinView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/VivoPinView;->access$002(Lcom/android/keyguard/VivoPinView;Z)Z

    .line 726
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 696
    const-string v0, "VivoPinView"

    const-string v1, "onAnimationEnd "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$500(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 698
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$600(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 699
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$700(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 700
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$800(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 701
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$500(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 702
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$600(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 703
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$700(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 704
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$800(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 705
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$100(Lcom/android/keyguard/VivoPinView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/VivoPinView;->access$002(Lcom/android/keyguard/VivoPinView;Z)Z

    .line 708
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 691
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$6;->this$0:Lcom/android/keyguard/VivoPinView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/VivoPinView;->access$002(Lcom/android/keyguard/VivoPinView;Z)Z

    .line 685
    return-void
.end method
