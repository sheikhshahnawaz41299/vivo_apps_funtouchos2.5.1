.class Lcom/vivo/settings/SoundPicker$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/SoundPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/SoundPicker;


# direct methods
.method constructor <init>(Lcom/vivo/settings/SoundPicker;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v1, "SoundPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast receive act="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1, v4}, Lcom/vivo/settings/SoundPicker;->access$002(Lcom/vivo/settings/SoundPicker;Z)Z

    .line 121
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-virtual {v1}, Lcom/vivo/settings/SoundPicker;->finish()V

    goto :goto_0

    .line 122
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$100(Lcom/vivo/settings/SoundPicker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$200(Lcom/vivo/settings/SoundPicker;)V

    .line 125
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$300(Lcom/vivo/settings/SoundPicker;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$400(Lcom/vivo/settings/SoundPicker;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$500(Lcom/vivo/settings/SoundPicker;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$400(Lcom/vivo/settings/SoundPicker;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b0980

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$400(Lcom/vivo/settings/SoundPicker;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b08d5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 134
    :cond_5
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 135
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$100(Lcom/vivo/settings/SoundPicker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$300(Lcom/vivo/settings/SoundPicker;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$200(Lcom/vivo/settings/SoundPicker;)V

    .line 138
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$400(Lcom/vivo/settings/SoundPicker;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$400(Lcom/vivo/settings/SoundPicker;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b08c3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 142
    :cond_6
    const-string v1, "intent.action.super_power_save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$1;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-virtual {v1}, Lcom/vivo/settings/SoundPicker;->finish()V

    goto/16 :goto_0
.end method
