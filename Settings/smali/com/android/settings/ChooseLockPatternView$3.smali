.class Lcom/android/settings/ChooseLockPatternView$3;
.super Ljava/lang/Object;
.source "ChooseLockPatternView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPatternView;->onDrawAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPatternView;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPatternView;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$100(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$200(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$300(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$400(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$100(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$200(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$300(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$400(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$100(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$200(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$300(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$3;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPatternView;->access$400(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 219
    return-void
.end method
