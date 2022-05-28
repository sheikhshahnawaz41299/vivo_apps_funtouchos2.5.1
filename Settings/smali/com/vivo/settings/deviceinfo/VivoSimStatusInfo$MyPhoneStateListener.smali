.class Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "VivoSimStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;I)V
    .locals 0
    .param p2, "subId"    # I

    .prologue
    .line 168
    iput-object p1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    .line 169
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 170
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 173
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "display":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 188
    :goto_0
    const-string v1, "VivoSimStatusInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    const-string v2, "data_state"

    invoke-virtual {v1, v2, v0}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    invoke-virtual {v1}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->updateNetworkType()V

    .line 191
    return-void

    .line 176
    :pswitch_0
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    goto :goto_0

    .line 185
    :pswitch_3
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
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
    .line 213
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    invoke-static {v0, p1}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->access$000(Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;Landroid/telephony/ServiceState;)V

    .line 214
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 7
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "dbm":I
    const/4 v0, 0x0

    .line 197
    .local v0, "asu":I
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 202
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    const v6, 0x7f0b002e

    invoke-virtual {v5, v6}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

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

    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    const v6, 0x7f0b002f

    invoke-virtual {v5, v6}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo$MyPhoneStateListener;->this$0:Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;

    const-string v5, "signal_strength"

    invoke-virtual {v4, v5, v3}, Lcom/vivo/settings/deviceinfo/VivoSimStatusInfo;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v4, "VivoSimStatusInfo"

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

    .line 210
    return-void

    .line 198
    .end local v3    # "summary":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "VivoSimStatusInfo"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
