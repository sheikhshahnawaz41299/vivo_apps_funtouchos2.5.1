.class Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$1;
.super Landroid/os/Handler;
.source "BaseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->create()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;


# direct methods
.method constructor <init>(Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$1;->this$0:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$1;->this$0:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;

    iget-object v1, v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mUnlockRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$1;->this$0:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;

    iget-object v1, v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mUnlockRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 104
    .local v0, "unlocktype":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$1;->this$0:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;

    iget-object v1, v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$1;->this$0:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;

    iget-object v1, v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;

    invoke-interface {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;->onUnlocked(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0    # "unlocktype":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$1;->this$0:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;

    iget-object v1, v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mEngineErrorListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$EngineErrorListener;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$1;->this$0:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;

    iget-object v2, v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mEngineErrorListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$EngineErrorListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$EngineErrorListener;->onFail(I)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
