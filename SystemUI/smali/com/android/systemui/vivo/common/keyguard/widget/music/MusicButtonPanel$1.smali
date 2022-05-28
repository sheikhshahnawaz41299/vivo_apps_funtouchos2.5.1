.class Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$1;
.super Landroid/os/Handler;
.source "MusicButtonPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;Z)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
