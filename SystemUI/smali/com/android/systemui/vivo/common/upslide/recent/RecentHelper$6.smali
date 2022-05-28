.class Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$6;
.super Landroid/os/Handler;
.source "RecentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$6;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 291
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$6;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$1200(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
