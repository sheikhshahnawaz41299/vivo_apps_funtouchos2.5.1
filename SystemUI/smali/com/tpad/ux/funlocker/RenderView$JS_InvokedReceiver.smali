.class Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpad/ux/funlocker/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JS_InvokedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpad/ux/funlocker/RenderView;


# direct methods
.method constructor <init>(Lcom/tpad/ux/funlocker/RenderView;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;->this$0:Lcom/tpad/ux/funlocker/RenderView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "action":Ljava/lang/String;
    const-string v1, "RenderView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/tpad/ux/funlocker/RenderView;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;->this$0:Lcom/tpad/ux/funlocker/RenderView;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView;->access$1(Lcom/tpad/ux/funlocker/RenderView;)Lcom/tpad/ux/funlocker/RenderView$JSHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;->this$0:Lcom/tpad/ux/funlocker/RenderView;

    invoke-static {v2}, Lcom/tpad/ux/funlocker/RenderView;->access$1(Lcom/tpad/ux/funlocker/RenderView;)Lcom/tpad/ux/funlocker/RenderView$JSHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Lcom/tpad/ux/funlocker/RenderView$JSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tpad/ux/funlocker/RenderView$JSHandler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;->abortBroadcast()V

    .line 248
    return-void
.end method
