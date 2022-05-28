.class Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;
.super Ljava/lang/Object;
.source "KeyguardMusicStreamHelper.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnMusicSeekbarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 172
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; fromUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz p3, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v0, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;I)V

    .line 176
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 180
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$502(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;Z)Z

    .line 182
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 186
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$702(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;Z)Z

    .line 189
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$800(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$800(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$800(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/media/Ringtone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$900(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    return-void
.end method
