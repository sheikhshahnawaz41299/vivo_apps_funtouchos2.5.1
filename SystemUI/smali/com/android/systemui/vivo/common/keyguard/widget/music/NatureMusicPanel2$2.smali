.class Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$2;
.super Landroid/os/Handler;
.source "NatureMusicPanel2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 258
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$1500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$1600(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
