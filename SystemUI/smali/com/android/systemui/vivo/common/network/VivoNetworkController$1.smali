.class Lcom/android/systemui/vivo/common/network/VivoNetworkController$1;
.super Landroid/os/Handler;
.source "VivoNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/network/VivoNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/network/VivoNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V
    .locals 0

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 938
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 939
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 944
    :goto_0
    return-void

    .line 941
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->access$300(Lcom/android/systemui/vivo/common/network/VivoNetworkController;I)V

    goto :goto_0

    .line 939
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
