.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobilePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)V
    .locals 0
    .param p2, "subId"    # I

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 1446
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 1447
    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 1511
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 1512
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1513
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1514
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->onDataActivity(II)V

    .line 1518
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 1495
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 1496
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->onDataConnectionStateChanged(III)V

    .line 1502
    :cond_0
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    .line 1522
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 1523
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1524
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1525
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V

    .line 1528
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1476
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 1477
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1479
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->onServiceStateChanged(ILandroid/telephony/ServiceState;)V

    .line 1483
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1458
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 1459
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1461
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->onSignalStrengthsChanged(ILandroid/telephony/SignalStrength;)V

    .line 1465
    :cond_0
    return-void
.end method
