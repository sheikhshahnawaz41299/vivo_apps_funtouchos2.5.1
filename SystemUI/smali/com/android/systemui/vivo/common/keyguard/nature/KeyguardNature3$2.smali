.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;
.super Landroid/os/Handler;
.source "KeyguardNature3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 338
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 339
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$1100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$1200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    goto :goto_0

    .line 347
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$1300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;II)V

    goto :goto_0

    .line 350
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_1

    move v3, v1

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$1500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_3
    invoke-static {v4, v0, v3, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$1600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;ZZZ)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    .line 353
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    goto :goto_0

    .line 356
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$1100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    goto :goto_0

    .line 339
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
