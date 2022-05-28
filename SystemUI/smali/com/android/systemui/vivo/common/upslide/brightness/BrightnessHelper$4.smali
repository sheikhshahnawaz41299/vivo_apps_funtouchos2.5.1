.class Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;
.super Ljava/lang/Object;
.source "BrightnessHelper.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/16 v4, 0x3e8

    .line 127
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: fromUser= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-nez p3, :cond_0

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$600(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$600(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$600(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;

    move-result-object v0

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBrightnessValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$900(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    sget v1, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessConstants;->MINIMUM_BACKLIGHT:I

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$700(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;I)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$302(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;Z)Z

    .line 121
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;->performHideAnimation()V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$500(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getUpSlideTransparentView()Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setMotionEventSplittingEnabled(Z)V

    .line 123
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v4, 0x3e8

    .line 96
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;->performShowAnimation()V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$500(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getUpSlideTransparentView()Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setMotionEventSplittingEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$600(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$600(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$600(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;

    move-result-object v0

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;->sendEmptyMessageDelayed(IJ)Z

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$800(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4$1;-><init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    sget v2, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessConstants;->MINIMUM_BACKLIGHT:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$700(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;I)V

    goto :goto_0
.end method
