.class Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;
.super Ljava/lang/Thread;
.source "ApnSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;

.field final synthetic val$item:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;->val$item:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    .line 479
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->access$2200(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/telephony/FtTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->access$2200(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/telephony/FtTelephony;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;->val$item:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iget v2, v2, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->slot:I

    invoke-virtual {v1, v2}, Landroid/telephony/FtTelephony;->setDataSub(I)Z

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->access$2300(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->access$2300(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;->val$item:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iget v2, v2, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->slot:I

    const/4 v3, -0x1

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 485
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->access$2300(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    return-void
.end method
