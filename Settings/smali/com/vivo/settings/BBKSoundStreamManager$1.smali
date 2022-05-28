.class Lcom/vivo/settings/BBKSoundStreamManager$1;
.super Landroid/os/Handler;
.source "BBKSoundStreamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/BBKSoundStreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/BBKSoundStreamManager;


# direct methods
.method constructor <init>(Lcom/vivo/settings/BBKSoundStreamManager;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vivo/settings/BBKSoundStreamManager$1;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    .line 51
    .local v1, "streamType":I
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 52
    .local v0, "progress":I
    const-string v2, "BBKSoundStreamManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMessage set stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager$1;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v2}, Lcom/vivo/settings/BBKSoundStreamManager;->access$000(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 54
    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    if-lez v0, :cond_1

    .line 68
    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager$1;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v2, v1}, Lcom/vivo/settings/BBKSoundStreamManager;->access$200(Lcom/vivo/settings/BBKSoundStreamManager;I)V

    .line 72
    :cond_0
    :goto_1
    return-void

    .line 56
    :pswitch_0
    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager$1;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v2}, Lcom/vivo/settings/BBKSoundStreamManager;->access$100(Lcom/vivo/settings/BBKSoundStreamManager;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ring_v"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager$1;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v2}, Lcom/vivo/settings/BBKSoundStreamManager;->access$100(Lcom/vivo/settings/BBKSoundStreamManager;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "music_v"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager$1;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v2}, Lcom/vivo/settings/BBKSoundStreamManager;->access$100(Lcom/vivo/settings/BBKSoundStreamManager;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "alarm_v"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager$1;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v2}, Lcom/vivo/settings/BBKSoundStreamManager;->access$300(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/Ringtone;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager$1;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v2}, Lcom/vivo/settings/BBKSoundStreamManager;->access$300(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager$1;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v2}, Lcom/vivo/settings/BBKSoundStreamManager;->access$400(Lcom/vivo/settings/BBKSoundStreamManager;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager$1;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-virtual {v2}, Lcom/vivo/settings/BBKSoundStreamManager;->stopSample()V

    goto :goto_1

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
