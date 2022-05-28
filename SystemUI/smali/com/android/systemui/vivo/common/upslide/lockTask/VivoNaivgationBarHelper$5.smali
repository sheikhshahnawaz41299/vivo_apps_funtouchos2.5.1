.class Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$5;
.super Landroid/os/Handler;
.source "VivoNaivgationBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    const v1, 0x7f0e024c

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->showPopupWindowTip(I)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
