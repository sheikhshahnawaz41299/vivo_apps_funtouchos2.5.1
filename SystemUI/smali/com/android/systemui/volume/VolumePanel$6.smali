.class Lcom/android/systemui/volume/VolumePanel$6;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurRingVolume:I

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

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
    const/16 v4, 0x11

    .line 1747
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1748
    .local v1, "tag":Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1749
    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1751
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1752
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2, p2}, Lcom/android/systemui/volume/VolumePanel;->access$1400(Lcom/android/systemui/volume/VolumePanel;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/VolumePanel$6;->mCurRingVolume:I

    .line 1753
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel$6;->mCurRingVolume:I

    invoke-static {v2, v0, v3, v4}, Lcom/android/systemui/volume/VolumePanel;->access$1500(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    .line 1759
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$700(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1760
    return-void

    .line 1755
    .restart local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2, v0, p2, v4}, Lcom/android/systemui/volume/VolumePanel;->access$1500(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1765
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1766
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1767
    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1768
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1769
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/volume/VolumePanel;->mRingSeekBarTracking:Z

    .line 1773
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1778
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1779
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1780
    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1789
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1792
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1796
    :cond_1
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1797
    iget v2, p0, Lcom/android/systemui/volume/VolumePanel$6;->mCurRingVolume:I

    mul-int/lit8 v2, v2, 0x14

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1798
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/volume/VolumePanel;->mRingSeekBarTracking:Z

    .line 1803
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_2
    return-void
.end method
