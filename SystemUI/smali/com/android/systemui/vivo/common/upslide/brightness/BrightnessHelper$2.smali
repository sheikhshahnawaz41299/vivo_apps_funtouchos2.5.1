.class Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$2;
.super Landroid/database/ContentObserver;
.source "BrightnessHelper.java"


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
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 74
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBrightnessObserver, selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFingerDown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    :cond_0
    return-void
.end method
