.class Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UpSlidePanelView.java"


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


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$500(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$500(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onExpandFinished()V

    .line 261
    :cond_0
    return-void
.end method
