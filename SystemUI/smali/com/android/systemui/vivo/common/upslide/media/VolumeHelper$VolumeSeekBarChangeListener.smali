.class Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "VolumeHelper.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private mCurVolume:I

.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 130
    if-eqz p3, :cond_0

    .line 131
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    invoke-static {v0, p2}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->mCurVolume:I

    .line 134
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->mCurVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 136
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->access$502(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;Z)Z

    .line 142
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener$1;-><init>(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 157
    return-void
.end method
