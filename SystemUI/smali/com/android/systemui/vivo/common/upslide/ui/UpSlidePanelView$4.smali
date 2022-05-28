.class Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UpSlidePanelView.java"


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
    .line 297
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$500(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$500(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onCollapseFinished()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->access$602(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;Z)Z

    .line 304
    return-void
.end method
