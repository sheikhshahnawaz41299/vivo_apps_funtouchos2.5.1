.class Lcom/android/systemui/screenshot/GlobalScreenshot$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 770
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 773
    sget-object v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFinisherRunLock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationEnd:Z

    .line 775
    sget-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->isSaveImageDone:Z

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 778
    const-string v0, "TakeScreenshotService"

    const-string v2, "mScreenBitmap.recycle() ..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 781
    const-string v0, "TakeScreenshotService"

    const-string v2, "isAnimationEnd final end, screenshot done.. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$502(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 785
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 786
    const-string v0, "TakeScreenshotService"

    const-string v1, "ScreenshotAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void

    .line 783
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
