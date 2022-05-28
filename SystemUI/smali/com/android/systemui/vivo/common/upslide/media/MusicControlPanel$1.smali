.class Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$1;
.super Landroid/os/Handler;
.source "MusicControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$1;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$1;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$000(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$1;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$100(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$1;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$200(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
