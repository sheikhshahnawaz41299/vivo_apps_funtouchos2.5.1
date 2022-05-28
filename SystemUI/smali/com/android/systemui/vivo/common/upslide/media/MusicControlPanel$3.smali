.class Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$3;
.super Landroid/database/ContentObserver;
.source "MusicControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$3;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 251
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChange"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$3;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1500(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$3;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$3;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1600(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1700(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Z)V

    .line 254
    return-void
.end method
