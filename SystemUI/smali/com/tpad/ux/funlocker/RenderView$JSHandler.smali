.class Lcom/tpad/ux/funlocker/RenderView$JSHandler;
.super Landroid/os/Handler;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpad/ux/funlocker/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpad/ux/funlocker/RenderView;


# direct methods
.method constructor <init>(Lcom/tpad/ux/funlocker/RenderView;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView$JSHandler;->this$0:Lcom/tpad/ux/funlocker/RenderView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 256
    if-eqz p1, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    if-nez v5, :cond_0

    .line 257
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 258
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 259
    .local v3, "mBundle":Landroid/os/Bundle;
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 260
    .local v1, "eng":I
    :goto_0
    if-nez v3, :cond_2

    const-string v4, ""

    .line 263
    .local v4, "ret":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView$JSHandler;->this$0:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v5, v1, v4}, Lcom/tpad/ux/funlocker/RenderView;->dispatchFunc(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "eng":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mBundle":Landroid/os/Bundle;
    .end local v4    # "ret":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 259
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "mBundle":Landroid/os/Bundle;
    :cond_1
    const-string v5, "Eng_Addr"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 261
    .restart local v1    # "eng":I
    :cond_2
    const-string v5, "Eng_Ret"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 264
    .restart local v4    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RenderView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
