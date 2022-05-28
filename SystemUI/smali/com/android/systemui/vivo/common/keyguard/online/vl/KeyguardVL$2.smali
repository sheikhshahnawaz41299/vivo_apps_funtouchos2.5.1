.class Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;
.super Ljava/lang/Object;
.source "KeyguardVL.java"

# interfaces
.implements Lcom/vlife/IRegisterUnlockEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doUnlock(I)V
    .locals 5
    .param p1, "unlockType"    # I

    .prologue
    const/4 v4, 0x0

    .line 83
    const-string v0, "KeyguardVL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUnlock unlockType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->userActivity()V

    .line 85
    packed-switch p1, :pswitch_data_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$300(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$000(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$100(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-static {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$100(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;I)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$100(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;I)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)I

    move-result v0

    if-lez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$100(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;I)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$100(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;I)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
