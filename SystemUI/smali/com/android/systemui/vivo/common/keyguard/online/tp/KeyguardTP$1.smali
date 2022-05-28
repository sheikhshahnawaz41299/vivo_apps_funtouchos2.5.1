.class Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;
.super Landroid/os/Handler;
.source "KeyguardTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    iget v1, p1, Landroid/os/Message;->what:I

    .line 100
    .local v1, "what":I
    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 102
    :pswitch_0
    const-string v2, "KeyguardTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler refresh call and msg, msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$000(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", call="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$100(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mRenderView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Lcom/tpad/ux/funlocker/RenderView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    iget-object v3, v2, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->lock:[B

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Lcom/tpad/ux/funlocker/RenderView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Lcom/tpad/ux/funlocker/RenderView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$000(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$100(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/tpad/ux/funlocker/RenderView;->setCountOfCallAndSms(II)V

    .line 107
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Lcom/tpad/ux/funlocker/RenderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tpad/ux/funlocker/RenderView;->resetView()V

    .line 108
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Lcom/tpad/ux/funlocker/RenderView;

    move-result-object v2

    sget-object v4, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_START:Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-virtual {v2, v4}, Lcom/tpad/ux/funlocker/RenderView;->setRenderState(Lcom/tpad/ux/funlocker/RenderCondition;)V

    .line 111
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
