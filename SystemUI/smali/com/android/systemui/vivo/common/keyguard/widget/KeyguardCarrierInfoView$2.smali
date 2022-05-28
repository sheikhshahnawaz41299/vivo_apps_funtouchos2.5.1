.class Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardCarrierInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 70
    const-string v9, "phone"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, "id":I
    const-string v9, "showPlmn"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 72
    .local v4, "showPlmn":Z
    const-string v9, "showSpn"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 73
    .local v5, "showSpn":Z
    const-string v9, "plmn"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "plmn":Ljava/lang/String;
    const-string v9, "spn"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "spn":Ljava/lang/String;
    const-string v9, "KeyguardCarrierInfoView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TH-TRUEMOVE -> slotId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", plmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", spn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 80
    :goto_0
    const-string v6, ""

    .line 89
    .local v6, "showStr":Ljava/lang/String;
    sget-object v9, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->COUNTRY_NUM:Ljava/lang/String;

    const-string v10, "TH"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 90
    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    if-eqz v5, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x7c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 97
    :cond_0
    if-eqz v5, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    :cond_1
    :goto_1
    if-eq v1, v12, :cond_2

    .line 109
    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 110
    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 111
    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 115
    .end local v1    # "id":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "plmn":Ljava/lang/String;
    .end local v4    # "showPlmn":Z
    .end local v5    # "showSpn":Z
    .end local v6    # "showStr":Ljava/lang/String;
    .end local v7    # "spn":Ljava/lang/String;
    :cond_2
    return-void

    .restart local v1    # "id":I
    .restart local v3    # "plmn":Ljava/lang/String;
    .restart local v4    # "showPlmn":Z
    .restart local v5    # "showSpn":Z
    .restart local v7    # "spn":Ljava/lang/String;
    :cond_3
    move v1, v8

    .line 79
    goto :goto_0

    .line 100
    .restart local v6    # "showStr":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 101
    move-object v6, v3

    goto :goto_1

    .line 102
    :cond_5
    if-eqz v5, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 103
    move-object v6, v7

    goto :goto_1

    .line 105
    :cond_6
    const-string v6, ""

    goto :goto_1
.end method
