.class Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener$1;
.super Ljava/lang/Object;
.source "VolumeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener$1;->this$1:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener$1;->this$1:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->access$502(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;Z)Z

    .line 153
    return-void
.end method
