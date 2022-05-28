.class Lcom/tpad/ux/funlocker/RenderView$1;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Lcom/tpad/ux/funlocker/JSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpad/ux/funlocker/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpad/ux/funlocker/RenderView;


# direct methods
.method constructor <init>(Lcom/tpad/ux/funlocker/RenderView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView$1;->this$0:Lcom/tpad/ux/funlocker/RenderView;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedJS(ILjava/lang/String;)V
    .locals 2
    .param p1, "eng"    # I
    .param p2, "ret"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView$1;->this$0:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v1, p1, p2}, Lcom/tpad/ux/funlocker/RenderView;->dispatchFunc(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
