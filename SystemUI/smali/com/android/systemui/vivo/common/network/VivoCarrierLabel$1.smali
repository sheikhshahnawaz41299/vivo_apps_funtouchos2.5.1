.class Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoCarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string v2, "VivoCarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$000(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$100(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "phone"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 88
    const-string v2, "VivoCarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$000(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    const-string v3, "plmn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$202(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$302(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;Z)Z

    .line 96
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    const-string v3, "spn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$402(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    const-string v3, "showSpn"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$502(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;Z)Z

    .line 98
    const-string v2, "VivoCarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh SPN_STRINGS of slot_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$000(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPlmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$200(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mShowPlmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$300(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSpn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$400(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mShowSpn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$500(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v1    # "slotId":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$200(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$300(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$400(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;->this$0:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$500(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Z

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->access$600(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 105
    return-void

    .line 90
    .restart local v1    # "slotId":I
    :cond_1
    const-string v2, "phone"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0
.end method
