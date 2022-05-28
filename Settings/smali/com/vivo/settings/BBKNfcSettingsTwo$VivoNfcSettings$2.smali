.class Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;
.super Landroid/os/Handler;
.source "BBKNfcSettingsTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$300(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-nez v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-virtual {v4}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$302(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 116
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$300(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    const v4, 0x7f0b0927

    invoke-virtual {v3, v4}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$300(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$300(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$300(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$300(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$300(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$300(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$300(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 129
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    .local v0, "now":J
    const-string v2, "VivoNfcSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check state now:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sLastUpdateNfcSimStateTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$400()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$400()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 132
    const/4 v2, 0x2

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v2, v4, v5}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 134
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 138
    .end local v0    # "now":J
    :pswitch_3
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$200(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Lcom/vivo/settings/SimUtils;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 139
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$200(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Lcom/vivo/settings/SimUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/settings/SimUtils;->forceFlush()V

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$500(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)V

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
