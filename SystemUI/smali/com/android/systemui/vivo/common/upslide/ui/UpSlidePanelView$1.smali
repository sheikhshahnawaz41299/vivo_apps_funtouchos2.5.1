.class Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;
.super Ljava/lang/Object;
.source "UpSlidePanelView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->bounceToEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

.field final synthetic val$mBouncelnInterpolator:Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;

.field final synthetic val$startPointAlpha:F


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;F)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->val$mBouncelnInterpolator:Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;

    iput p3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->val$startPointAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 237
    .local v3, "lengthInterpolation":F
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$000(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v2, v4, v3

    .line 238
    .local v2, "dtDistance":F
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->val$mBouncelnInterpolator:Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;->getAlphaInterpolation()F

    move-result v0

    .line 239
    .local v0, "alphaInterpolation":F
    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->val$startPointAlpha:F

    const/high16 v5, 0x3f000000    # 0.5f

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->val$startPointAlpha:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float v1, v4, v5

    .line 240
    .local v1, "backgroundAlpha":F
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$200(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 251
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$500(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setBackgroundAlpha(F)V

    .line 252
    return-void

    .line 242
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$300(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$400(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$400(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
