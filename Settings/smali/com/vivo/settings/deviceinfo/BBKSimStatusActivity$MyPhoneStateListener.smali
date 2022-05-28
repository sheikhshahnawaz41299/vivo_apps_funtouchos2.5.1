.class Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "BBKSimStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;I)V
    .locals 0
    .param p2, "subId"    # I

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    .line 152
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 153
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 156
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "display":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    const-string v2, "data_state"

    invoke-virtual {v1, v2, v0}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    invoke-virtual {v1}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->updateNetworkType()V

    .line 173
    return-void

    .line 159
    :pswitch_0
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    goto :goto_0

    .line 168
    :pswitch_3
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    invoke-static {v0, p1}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->access$000(Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;Landroid/telephony/ServiceState;)V

    .line 196
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 7
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "dbm":I
    const/4 v0, 0x0

    .line 179
    .local v0, "asu":I
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 184
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    const v6, 0x7f0b002e

    invoke-virtual {v5, v6}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    const v6, 0x7f0b002f

    invoke-virtual {v5, v6}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;

    const-string v5, "signal_strength"

    invoke-virtual {v4, v5, v3}, Lcom/vivo/settings/deviceinfo/BBKSimStatusActivity;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v4, "BBKSimStatusActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "asu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",dbm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 180
    .end local v3    # "summary":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "BBKSimStatusActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
