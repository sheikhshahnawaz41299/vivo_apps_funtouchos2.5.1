.class Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$3;
.super Landroid/os/Handler;
.source "UpSlideHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;I)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
