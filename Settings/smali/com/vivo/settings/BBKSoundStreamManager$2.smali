.class Lcom/vivo/settings/BBKSoundStreamManager$2;
.super Ljava/lang/Object;
.source "BBKSoundStreamManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 74
    iput-object p1, p0, Lcom/vivo/settings/BBKSoundStreamManager$2;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 80
    :pswitch_0
    const-string v0, "BBKSoundStreamManager"

    const-string v1, "AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$2;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v0}, Lcom/vivo/settings/BBKSoundStreamManager;->access$000(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/BBKSoundStreamManager$2;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v1}, Lcom/vivo/settings/BBKSoundStreamManager;->access$500(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 83
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$2;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-virtual {v0}, Lcom/vivo/settings/BBKSoundStreamManager;->stopSample()V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
