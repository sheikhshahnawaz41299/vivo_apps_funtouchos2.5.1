.class Lcom/vivo/settings/BBKSoundStreamManager$MyListener;
.super Ljava/lang/Object;
.source "BBKSoundStreamManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/BBKSoundStreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyListener"
.end annotation


# instance fields
.field private pref:Lcom/vivo/settings/preference/SeekBarPreference;

.field final synthetic this$0:Lcom/vivo/settings/BBKSoundStreamManager;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/vivo/settings/BBKSoundStreamManager;Lcom/vivo/settings/preference/SeekBarPreference;I)V
    .locals 1
    .param p2, "pref"    # Lcom/vivo/settings/preference/SeekBarPreference;
    .param p3, "type"    # I

    .prologue
    .line 128
    iput-object p1, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->pref:Lcom/vivo/settings/preference/SeekBarPreference;

    .line 130
    iput p3, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->type:I

    .line 131
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->pref:Lcom/vivo/settings/preference/SeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/vivo/settings/preference/SeekBarPreference;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 137
    if-eqz p3, :cond_0

    .line 138
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    iget v1, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->type:I

    invoke-virtual {v0, p2, v1}, Lcom/vivo/settings/BBKSoundStreamManager;->setSound(II)V

    .line 140
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/settings/BBKSoundStreamManager;->access$602(Lcom/vivo/settings/BBKSoundStreamManager;Z)Z

    .line 145
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v0, v2}, Lcom/vivo/settings/BBKSoundStreamManager;->access$602(Lcom/vivo/settings/BBKSoundStreamManager;Z)Z

    .line 150
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v0}, Lcom/vivo/settings/BBKSoundStreamManager;->access$700(Lcom/vivo/settings/BBKSoundStreamManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/settings/BBKSoundStreamManager;->access$802(Lcom/vivo/settings/BBKSoundStreamManager;Z)Z

    .line 152
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v0}, Lcom/vivo/settings/BBKSoundStreamManager;->access$300(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v0}, Lcom/vivo/settings/BBKSoundStreamManager;->access$300(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v0}, Lcom/vivo/settings/BBKSoundStreamManager;->access$700(Lcom/vivo/settings/BBKSoundStreamManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->this$0:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-static {v0}, Lcom/vivo/settings/BBKSoundStreamManager;->access$300(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->pref:Lcom/vivo/settings/preference/SeekBarPreference;

    iget-object v1, p0, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;->pref:Lcom/vivo/settings/preference/SeekBarPreference;

    invoke-virtual {v1}, Lcom/vivo/settings/preference/SeekBarPreference;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/preference/SeekBarPreference;->setProgress(I)V

    .line 157
    return-void
.end method
