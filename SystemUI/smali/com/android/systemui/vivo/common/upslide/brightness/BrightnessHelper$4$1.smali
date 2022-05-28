.class Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4$1;
.super Ljava/lang/Object;
.source "BrightnessHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4$1;->this$1:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4$1;->this$1:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$302(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;Z)Z

    .line 113
    return-void
.end method
