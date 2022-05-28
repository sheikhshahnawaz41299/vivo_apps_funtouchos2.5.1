.class Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager$3;
.super Landroid/os/Handler;
.source "ResourceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->initResourceHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager$3;->this$0:Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 77
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 81
    check-cast v0, Landroid/graphics/Bitmap;

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
