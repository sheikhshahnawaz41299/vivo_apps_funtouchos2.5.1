.class Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;
.super Ljava/lang/Object;
.source "UpSlidePanelView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->collapse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 283
    .local v0, "frac":F
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$200(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 294
    :goto_0
    :pswitch_0
    return-void

    .line 285
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$300(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F

    move-result v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    goto :goto_0

    .line 288
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$400(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F

    move-result v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_0

    .line 291
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$400(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F

    move-result v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
