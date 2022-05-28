.class Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$1;
.super Landroid/os/Handler;
.source "UpSlideUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$100(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;Z)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$200(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;Z)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
