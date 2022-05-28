.class Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$4;
.super Landroid/os/Handler;
.source "RecentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_0
    :pswitch_0
    return-void

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$700(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$800(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    goto :goto_0

    .line 240
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$900(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Landroid/app/ActivityManager$RecentTaskInfo;)V

    goto :goto_0

    .line 243
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$1000(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
