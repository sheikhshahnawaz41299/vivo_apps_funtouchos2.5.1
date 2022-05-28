.class Lcom/vivo/settings/SoundSettings$2;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/vivo/settings/SoundSettings$2;->this$0:Lcom/vivo/settings/SoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings$2;->this$0:Lcom/vivo/settings/SoundSettings;

    invoke-virtual {v0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings$2;->this$0:Lcom/vivo/settings/SoundSettings;

    invoke-static {v0}, Lcom/vivo/settings/SoundSettings;->access$000(Lcom/vivo/settings/SoundSettings;)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings$2;->this$0:Lcom/vivo/settings/SoundSettings;

    invoke-virtual {v0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings$2;->this$0:Lcom/vivo/settings/SoundSettings;

    invoke-static {v0}, Lcom/vivo/settings/SoundSettings;->access$200(Lcom/vivo/settings/SoundSettings;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
