.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;
.super Landroid/os/Handler;
.source "KeyguardNature2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 257
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;II)V

    goto :goto_0

    .line 266
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V

    goto :goto_0

    .line 269
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    goto :goto_0

    .line 272
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
