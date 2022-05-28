.class Lcom/tpad/ux/funlocker/RenderView$TimerClock;
.super Ljava/lang/Thread;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpad/ux/funlocker/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerClock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpad/ux/funlocker/RenderView;


# direct methods
.method constructor <init>(Lcom/tpad/ux/funlocker/RenderView;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView$TimerClock;->this$0:Lcom/tpad/ux/funlocker/RenderView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 275
    :goto_0
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView$TimerClock;->this$0:Lcom/tpad/ux/funlocker/RenderView;

    iget-boolean v1, v1, Lcom/tpad/ux/funlocker/RenderView;->invalidate:Z

    if-nez v1, :cond_0

    .line 284
    return-void

    .line 277
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tpad/ux/funlocker/RenderView;->access$2()Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$0(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView$TimerClock;->this$0:Lcom/tpad/ux/funlocker/RenderView;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView;->access$3(Lcom/tpad/ux/funlocker/RenderView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    :cond_1
    invoke-static {}, Lcom/tpad/ux/funlocker/RenderView;->access$2()Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    move-result-object v1

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$1(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/tpad/ux/funlocker/RenderView$TimerClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
