.class Lcom/android/systemui/statusbar/KeyguardIndicationController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v2

    .line 167
    .local v0, "isChargingOrFull":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$002(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$102(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 170
    return-void

    .end local v0    # "isChargingOrFull":Z
    :cond_1
    move v0, v1

    .line 165
    goto :goto_0

    .restart local v0    # "isChargingOrFull":Z
    :cond_2
    move v2, v1

    .line 167
    goto :goto_1
.end method
