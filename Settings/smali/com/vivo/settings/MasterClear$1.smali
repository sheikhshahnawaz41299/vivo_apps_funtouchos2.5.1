.class Lcom/vivo/settings/MasterClear$1;
.super Landroid/os/Handler;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/vivo/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vivo/settings/MasterClear$1;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    .line 65
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v1, p0, Lcom/vivo/settings/MasterClear$1;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v1}, Lcom/vivo/settings/MasterClear;->access$000(Lcom/vivo/settings/MasterClear;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v1, p0, Lcom/vivo/settings/MasterClear$1;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v1}, Lcom/vivo/settings/MasterClear;->access$100(Lcom/vivo/settings/MasterClear;)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v1, p0, Lcom/vivo/settings/MasterClear$1;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v1}, Lcom/vivo/settings/MasterClear;->access$200(Lcom/vivo/settings/MasterClear;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/settings/MasterClear;->access$300(Landroid/content/Context;)V

    .line 74
    iget-object v1, p0, Lcom/vivo/settings/MasterClear$1;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v1}, Lcom/vivo/settings/MasterClear;->access$200(Lcom/vivo/settings/MasterClear;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/settings/MasterClear;->access$400(Landroid/content/Context;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
