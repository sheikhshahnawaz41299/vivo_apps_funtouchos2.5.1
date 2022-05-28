.class Lcom/vivo/settings/SoundPicker$4;
.super Ljava/lang/Object;
.source "SoundPicker.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/SoundPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/SoundPicker;


# direct methods
.method constructor <init>(Lcom/vivo/settings/SoundPicker;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/vivo/settings/SoundPicker$4;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    .line 724
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 725
    const-string v0, "SoundPicker"

    const-string v1, "AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker$4;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v0}, Lcom/vivo/settings/SoundPicker;->access$1100(Lcom/vivo/settings/SoundPicker;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker$4;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v0}, Lcom/vivo/settings/SoundPicker;->access$1100(Lcom/vivo/settings/SoundPicker;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 728
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker$4;->this$0:Lcom/vivo/settings/SoundPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/settings/SoundPicker;->access$1102(Lcom/vivo/settings/SoundPicker;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker$4;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v0}, Lcom/vivo/settings/SoundPicker;->access$1200(Lcom/vivo/settings/SoundPicker;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker$4;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v0}, Lcom/vivo/settings/SoundPicker;->access$1200(Lcom/vivo/settings/SoundPicker;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$4;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$1300(Lcom/vivo/settings/SoundPicker;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 734
    :cond_1
    return-void
.end method
