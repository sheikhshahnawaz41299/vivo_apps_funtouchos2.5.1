.class Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;
.super Landroid/os/Handler;
.source "UpSlideTransparentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V
    .locals 0

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1276
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1314
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1278
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v1, v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$900(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)V

    goto :goto_0

    .line 1281
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v1, v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$900(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)V

    goto :goto_0

    .line 1284
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setVisibility(I)V

    .line 1285
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-direct {v1, v2, v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1289
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v1, v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1002(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)Z

    .line 1291
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isPopupToolbarShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1292
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->dismissPopupToolbar()V

    .line 1294
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1200(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V

    .line 1295
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v1, v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1300(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)V

    .line 1296
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setVisibility(I)V

    goto :goto_0

    .line 1301
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;

    if-eqz v1, :cond_2

    .line 1302
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;

    .line 1303
    .local v0, "args":Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    iget v2, v0, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;->downX:F

    iget v3, v0, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;->downY:F

    invoke-static {v1, v4, v2, v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1400(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;IFF)V

    .line 1304
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    iget v2, v0, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;->upX:F

    iget v3, v0, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;->upY:F

    invoke-static {v1, v5, v2, v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1400(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;IFF)V

    .line 1306
    .end local v0    # "args":Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setVisibility(I)V

    goto :goto_0

    .line 1309
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$200(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V

    goto :goto_0

    .line 1276
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
