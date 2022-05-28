.class Lcom/vivo/settings/BootCombineReceiver$1;
.super Landroid/os/Handler;
.source "BootCombineReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/BootCombineReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/BootCombineReceiver;


# direct methods
.method constructor <init>(Lcom/vivo/settings/BootCombineReceiver;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vivo/settings/BootCombineReceiver$1;->this$0:Lcom/vivo/settings/BootCombineReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/settings/BootCombineReceiver$1;->this$0:Lcom/vivo/settings/BootCombineReceiver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/settings/BootCombineReceiver;->access$000(Lcom/vivo/settings/BootCombineReceiver;Z)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/settings/BootCombineReceiver$1;->this$0:Lcom/vivo/settings/BootCombineReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/settings/BootCombineReceiver;->access$000(Lcom/vivo/settings/BootCombineReceiver;Z)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
