.class final Lcom/vivo/settings/IndexSlipView$ToastPopHandler;
.super Landroid/os/Handler;
.source "IndexSlipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/IndexSlipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ToastPopHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/IndexSlipView;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/IndexSlipView;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/IndexSlipView;Lcom/vivo/settings/IndexSlipView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/IndexSlipView;
    .param p2, "x1"    # Lcom/vivo/settings/IndexSlipView$1;

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;-><init>(Lcom/vivo/settings/IndexSlipView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 685
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 712
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 713
    return-void

    .line 688
    :pswitch_0
    const/4 v5, 0x2

    :try_start_0
    new-array v2, v5, [I

    .line 689
    .local v2, "viewLocation":[I
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-virtual {v5, v2}, Lcom/vivo/settings/IndexSlipView;->getLocationOnScreen([I)V

    .line 690
    const v1, 0x800035

    .line 691
    .local v1, "gravity":I
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v5}, Lcom/vivo/settings/IndexSlipView;->access$1000(Lcom/vivo/settings/IndexSlipView;)I

    move-result v5

    div-int/lit8 v3, v5, 0x5

    .line 692
    .local v3, "xOffset":I
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v5}, Lcom/vivo/settings/IndexSlipView;->access$1100(Lcom/vivo/settings/IndexSlipView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 693
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v5}, Lcom/vivo/settings/IndexSlipView;->access$1000(Lcom/vivo/settings/IndexSlipView;)I

    move-result v5

    iget-object v6, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v6}, Lcom/vivo/settings/IndexSlipView;->access$1000(Lcom/vivo/settings/IndexSlipView;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    sub-int v3, v5, v6

    .line 695
    :cond_1
    const/4 v5, 0x1

    aget v5, v2, v5

    iget-object v6, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v6}, Lcom/vivo/settings/IndexSlipView;->access$100(Lcom/vivo/settings/IndexSlipView;)I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    add-int v4, v5, v6

    .line 696
    .local v4, "yOffset":I
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v5}, Lcom/vivo/settings/IndexSlipView;->access$1200(Lcom/vivo/settings/IndexSlipView;)Landroid/widget/PopupWindow;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-virtual {v5, v6, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    .end local v1    # "gravity":I
    .end local v2    # "viewLocation":[I
    .end local v3    # "xOffset":I
    .end local v4    # "yOffset":I
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v5}, Lcom/vivo/settings/IndexSlipView;->access$1200(Lcom/vivo/settings/IndexSlipView;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 704
    :try_start_1
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v5}, Lcom/vivo/settings/IndexSlipView;->access$1200(Lcom/vivo/settings/IndexSlipView;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 708
    :goto_1
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v5}, Lcom/vivo/settings/IndexSlipView;->access$1300(Lcom/vivo/settings/IndexSlipView;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 705
    :catch_1
    move-exception v0

    .line 706
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
