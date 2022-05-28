.class Lcom/android/keyguard/VivoPasswordView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "VivoPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPasswordView;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/keyguard/VivoPasswordView$4;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 515
    const-string v0, "VivoPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo mBatteryLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView$4;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget v2, v2, Lcom/android/keyguard/VivoPasswordView;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$4;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iput v1, v0, Lcom/android/keyguard/VivoPasswordView;->mBatteryLevel:I

    .line 517
    return-void
.end method

.method public onSimStateChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 526
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 507
    const-string v0, "VivoPasswordView"

    const-string v1, "onTimeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$4;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPasswordView;->access$100(Lcom/android/keyguard/VivoPasswordView;)Lcom/android/keyguard/KeyguardUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$4;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$000(Lcom/android/keyguard/VivoPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->updateWeekInfo(Landroid/widget/TextView;)V

    .line 509
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$4;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPasswordView;->access$100(Lcom/android/keyguard/VivoPasswordView;)Lcom/android/keyguard/KeyguardUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$4;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$200(Lcom/android/keyguard/VivoPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->refreshDate(Landroid/widget/TextView;)V

    .line 510
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$4;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPasswordView;->access$300(Lcom/android/keyguard/VivoPasswordView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 511
    return-void
.end method
