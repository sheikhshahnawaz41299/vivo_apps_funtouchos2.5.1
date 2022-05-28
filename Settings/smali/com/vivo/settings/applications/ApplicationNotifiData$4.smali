.class Lcom/vivo/settings/applications/ApplicationNotifiData$4;
.super Landroid/os/Handler;
.source "ApplicationNotifiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/ApplicationNotifiData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/ApplicationNotifiData;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$4;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 380
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 382
    :pswitch_0
    iget-object v1, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$4;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/settings/applications/ApplicationNotifiData;->access$100(Lcom/vivo/settings/applications/ApplicationNotifiData;[Ljava/lang/String;)V

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
