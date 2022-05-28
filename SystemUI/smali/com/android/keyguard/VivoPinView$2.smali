.class Lcom/android/keyguard/VivoPinView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "VivoPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPinView;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/keyguard/VivoPinView$2;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 526
    const-string v0, "VivoPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo mBatteryLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView$2;->this$0:Lcom/android/keyguard/VivoPinView;

    iget v2, v2, Lcom/android/keyguard/VivoPinView;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$2;->this$0:Lcom/android/keyguard/VivoPinView;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iput v1, v0, Lcom/android/keyguard/VivoPinView;->mBatteryLevel:I

    .line 528
    return-void
.end method

.method public onSimStateChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 537
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 518
    const-string v0, "VivoPinView"

    const-string v1, "onTimeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$2;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$300(Lcom/android/keyguard/VivoPinView;)Lcom/android/keyguard/KeyguardUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$2;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$200(Lcom/android/keyguard/VivoPinView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->updateWeekInfo(Landroid/widget/TextView;)V

    .line 520
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView$2;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPinView;->access$300(Lcom/android/keyguard/VivoPinView;)Lcom/android/keyguard/KeyguardUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$2;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$400(Lcom/android/keyguard/VivoPinView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->refreshDate(Landroid/widget/TextView;)V

    .line 522
    return-void
.end method
