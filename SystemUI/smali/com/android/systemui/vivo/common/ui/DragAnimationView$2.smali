.class Lcom/android/systemui/vivo/common/ui/DragAnimationView$2;
.super Landroid/os/Handler;
.source "DragAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/ui/DragAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/DragAnimationView;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$2;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$2;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->access$200(Lcom/android/systemui/vivo/common/ui/DragAnimationView;I)V

    goto :goto_0

    .line 307
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$2;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->access$200(Lcom/android/systemui/vivo/common/ui/DragAnimationView;I)V

    goto :goto_0

    .line 310
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$2;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->invalidate()V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
