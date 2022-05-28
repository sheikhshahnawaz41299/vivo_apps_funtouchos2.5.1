.class Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;
.super Landroid/os/Handler;
.source "BrightnessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .line 281
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 282
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$800(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    sget v2, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessConstants;->MINIMUM_BACKLIGHT:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$700(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;I)V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
