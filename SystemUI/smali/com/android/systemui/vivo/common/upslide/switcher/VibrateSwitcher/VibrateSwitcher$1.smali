.class Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;
.super Ljava/lang/Object;
.source "VibrateSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 60
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 61
    .local v1, "ringerMode":I
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 63
    .local v2, "vibrateMode":I
    const-string v3, "VibrateSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVibrateClickListener.onClick(), ringerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", vibrateMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRingerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mVibrateMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-ne v1, v7, :cond_0

    .line 67
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 68
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 77
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->refreshDisplay()V

    .line 78
    return-void

    .line 71
    :cond_0
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 72
    invoke-virtual {v0, v6, v7}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 73
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)V

    goto :goto_0
.end method
