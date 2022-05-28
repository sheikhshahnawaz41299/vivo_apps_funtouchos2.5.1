.class Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$2;
.super Landroid/os/Handler;
.source "StatusBarColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->initHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$2;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 633
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 642
    :goto_0
    return-void

    .line 635
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$2;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->access$100(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;I)V

    goto :goto_0

    .line 638
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$2;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->access$200(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;Landroid/content/Intent;)V

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
