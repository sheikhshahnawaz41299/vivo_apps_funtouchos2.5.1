.class Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;
.super Ljava/lang/Object;
.source "UpSlideTransparentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;FF)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->val$x:F

    iput p3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 334
    const-string v0, "UpSlideTransparentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentEventAction= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$300(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$300(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$400(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$802(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 343
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$500(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$602(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)Z

    .line 340
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->val$x:F

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;->val$y:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$700(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;FF)V

    goto :goto_0
.end method
